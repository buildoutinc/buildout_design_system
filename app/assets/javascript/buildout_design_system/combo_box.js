class DsComboBox extends HTMLElement {
    static observedAttributes = ["is-searching", "no-results"];

    constructor() {
        super();

        this.dropdown;
        this.dropdownOptions = [];
        this.input;
        this.noResultsText;
        this.originalSelect;
        this._renderOption = option => option.label
    }

    get renderOption() {
        return this._renderOption;
    }

    // this allows users to call element.renderOption and pass in their own render function
    set renderOption(renderOptionFunction) {
        if (typeof renderOptionFunction !== "function") {
            console.error("renderOption only allows functions");
            return;
        }

        this._renderOption = renderOptionFunction;
        this.setupDropdownOptions()
    }

    connectedCallback() {
        this.classList.add("position-relative", "d-block")

        if (this.querySelector("select")) {
            this.originalSelect = this.querySelector("select");
            this.selectAdded();
            return;
        }

        // with how dom gets created this will not have the select yet so we need to add a callback for when it is created.
        const observer = new MutationObserver((mutations, obs) => {
            const select = this.querySelector("select");
            if (select) {
                this.originalSelect = select;
                obs.disconnect();
                this.selectAdded();
            }
        });

        observer.observe(this, {childList: true});
    }

    selectAdded() {
        this.originalSelect.classList.add("d-none");
        this.setupInputContainer();
        this.addLoadingIcon();
        this.setupDropdown();
        this.addListeners();
    }

    addListeners() {
        this.addEventListener("selectUpdated", (e) => {
            this.valueChanged(e.detail.value)
        })

        this.addEventListener("keydown", (e) => {
            if (e.key === "Escape") {
                if (document.activeElement === this.input) {
                    this.hideDropdown();
                    this.input.blur();
                } else {
                    this.input.focus();
                }
            }
        })
    }

    setupInputContainer() {
        const label = document.createElement("label");
        label.classList.add("d-block", "m-0");
        this.appendChild(label);

        if (this.hasAttribute("prefix_class")) this.setupInputIcon(label)
        this.setupInput(label);
    }

    addLoadingIcon() {
        this.loadingIcon = document.createElement("div")
        this.loadingIcon.classList.add("search-icon-container", "d-none")
        const icon = document.createElement("i");
        this.loadingIcon.classList.add("fas", "fa-spinner", "fa-pulse");
        this.loadingIcon.appendChild(icon)
        this.appendChild(this.loadingIcon)
    }

    setupInput(label) {
        this.input = document.createElement("input");
        this.input.classList.add("form-select");
        this.input.value = this.selectedOptionText();
        this.input.readOnly = this.hasAttribute("disable_search")
        label.appendChild(this.input)

        this.input.addEventListener("focus", this.showDropdown)
        this.input.addEventListener("input", (e) => {
            if (this.hasAttribute("async")) {
                this.handleAsync(e)
            } else {
                const wordToSearch = e.target.value.toLowerCase();
                this.filterDropdown(wordToSearch)
            }
        })
    }

    handleAsync(e) {
        this.setAttribute("is-searching", "true");
        clearTimeout(this.asyncTimeoutId)
        this.asyncTimeoutId = setTimeout(() => {
            const customEvent = new CustomEvent("inputChange", {
                detail: {value: e.target.value, callBack: this.handleAsyncOptions}
            })
            this.dispatchEvent(customEvent);
        }, 300)
    }

    handleAsyncOptions = (options) => {
        this.dropdownOptions = options;
        this.removeAttribute("is-searching");
        this.setupDropdownOptions();
        if (options.length === 0) {
            this.setAttribute("no-results", "")
        } else {
            this.removeAttribute("no-results")
        }
    }

    setupDropdownOptions() {
        const selectedOptionValue = this.selectedOptionValue()
        this.dropdown.querySelectorAll("button.dropdown-item").forEach(button => button.remove())

        this.dropdownOptions.forEach(option => {
            if (option.label === "") return;

            const button = document.createElement("button")
            button.classList.add("dropdown-item")
            if (String(option.value) === selectedOptionValue) button.classList.add("active")
            button.dataset.value = option.value
            this.addOptionContent(button, option)
            button.type = "button";
            button.addEventListener("click", this.valueSelected)
            this.dropdown.appendChild(button)
        })
    }

    addOptionContent(button, option) {
        button.innerHTML = this.renderOption(option)
    }

    setupDropdown() {
        this.dropdown = document.createElement("div")
        this.dropdown.classList.add("item-container", "w-100", "mt-0-5")
        this.dropdownOptions = [...this.originalSelect.querySelectorAll("option")].filter(option => option.value !== "")
            .map(option => ({
                value: option.value,
                label: option.textContent
            }))
        this.setupDropdownOptions()

        this.noResultsText = document.createElement("div")
        const buttonHtml = this.hasAttribute("async") ? "" : `<div><button class="btn btn-text-primary mt-2" type="button"><i class="fa-solid fa-undo" aria-hidden="true"></i>Reset Search</button></div>`
        this.noResultsText.innerHTML = `No results found for <span></span>${buttonHtml}`;
        this.noResultsText.classList.add("d-none", "text-center");
        if (!this.hasAttribute("async")) {
            this.noResultsText.querySelector("button").addEventListener("click", () => {
                this.input.value = "";
                this.filterDropdown("");
                this.input.focus();
            })
        }
        this.dropdown.appendChild(this.noResultsText);

        this.appendChild(this.dropdown)
    }

    valueSelected = (e) => {
        if (this.hasAttribute("async")) {
            this.originalSelect.innerHTML = `<option value='${e.target.dataset.value}'>${e.target.textContent}</option>`
        }
        this.originalSelect.value = e.target.dataset.value;
        const customEvent = new CustomEvent("selectChange", {detail: {value: e.target.dataset.value}})
        this.dispatchEvent(customEvent);
        this.valueChanged(e.target.dataset.value)
    }

    valueChanged = (selectedValue) => {
        const stringSelectedValue = String(selectedValue);
        const dropdownItems = this.dropdown.querySelectorAll(".dropdown-item")
        dropdownItems.forEach(button => button.classList.remove("active"));
        const selectedButton = [...dropdownItems].find(button => button.dataset.value === stringSelectedValue)
        selectedButton.classList.add("active");
        this.hideDropdown();
    }

    filterDropdown = (wordToSearch) => {
        let noResultsFound = true;

        this.dropdown.querySelectorAll(".dropdown-item").forEach(button => {
            if (!button.textContent.toLowerCase().includes(wordToSearch)) {
                button.classList.add("d-none");
            } else {
                button.classList.remove("d-none");
                noResultsFound = false;
            }
        })

        if (noResultsFound) {
            this.setAttribute("no-results", "")
        } else {
            this.removeAttribute("no-results")
        }
    }

    showDropdown = () => {
        if (this.dropdown.classList.contains("show")) return;

        this.dropdown.classList.add("show");
        if (!this.hasAttribute("disable_search")) {
            this.input.value = "";
            this.input.placeholder = this.selectedOptionText();
            this.filterDropdown("");
        }
        window.addEventListener("click", this.targetElementNotInsideComboBox);
        window.addEventListener("focusin", this.targetElementNotInsideComboBox);
    }

    targetElementNotInsideComboBox = (e) => {
        if (!this.contains(e.target)) this.hideDropdown()
    }

    selectedOption() {
        return this.originalSelect.options[this.originalSelect.selectedIndex];
    }

    selectedOptionValue() {
        const selectedOption = this.selectedOption()
        if (selectedOption) return this.selectedOption().value

        return null;
    }

    selectedOptionText() {
        const selectedOption = this.selectedOption()
        if (selectedOption) {
            return selectedOption.textContent;
        } else if (this.hasAttribute("async")) {
            return "Type to search"
        }
    }

    hideDropdown() {
        this.dropdown.classList.remove("show");
        this.input.value = this.selectedOptionText();
        window.removeEventListener("click", this.targetElementNotInsideComboBox);
        window.removeEventListener("focusout", this.targetElementNotInsideComboBox);
    }

    attributeChangedCallback(name, _oldValue, _newValue) {
        switch (name) {
            case "is-searching":
                this.showLoadingIcon()
                break;
            case "no-results":
                this.showNoResults()
                break;
        }
    }

    setupPrefixContainer() {
        this.classList.add("has-prefix")
        const prefixContainer = document.createElement("span")
        prefixContainer.classList.add("prefix-container")
        return prefixContainer
    }

    setupInputIcon(label) {
        const prefixContainer = this.setupPrefixContainer();
        const icon = document.createElement("i")
        icon.classList.add(this.getAttribute("prefix_class"), "fas")
        prefixContainer.appendChild(icon)
        label.appendChild(prefixContainer);
    }

    showLoadingIcon() {
        const isSearching = this.hasAttribute("is-searching")

        if (isSearching) {
            this.loadingIcon.classList.remove("d-none")
        } else {
            this.loadingIcon.classList.add("d-none")
        }
    }

    showNoResults() {
        const noResultsFound = this.hasAttribute("no-results");

        if (noResultsFound) {
            this.noResultsText.querySelector("span").textContent = this.input.value
            this.noResultsText.classList.remove("d-none");
        } else {
            this.noResultsText.classList.add("d-none");
        }
    }
}

customElements.define('ds-combo-box', DsComboBox);
