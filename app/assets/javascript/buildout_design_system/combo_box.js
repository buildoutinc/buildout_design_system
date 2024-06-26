class DsComboBox extends HTMLElement {
    constructor() {
        super();

        this.showDropdown = this.showDropdown.bind(this);
        this.filterDropdown = this.filterDropdown.bind(this);
        this.valueSelected = this.valueSelected.bind(this);
        this.targetElementNotInsideComboBox = this.targetElementNotInsideComboBox.bind(this);
        this.dropdown;
        this.input;
        this.noResultsText;
        this.originalSelect;
    }

    connectedCallback() {
        this.classList.add("position-relative", "d-block")

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
        this.setupInput();
        this.setupDropdown();
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

    setupInput() {
        const input = document.createElement("input");
        input.classList.add("form-select");
        input.value = this.selectedOptionText();
        this.appendChild(input)
        this.input = input;

        input.addEventListener("focus", this.showDropdown)
        input.addEventListener("input", (e) => {
            const wordToSearch = e.target.value.toLowerCase();
            this.filterDropdown(wordToSearch)
        })
    }

    setupDropdown() {
        const dropdown = document.createElement("div")
        dropdown.classList.add("item-container", "w-100")

        this.originalSelect.querySelectorAll("option").forEach(option => {
            if (option.value === "") return;

            const button = document.createElement("button")
            button.classList.add("dropdown-item")
            if (option.selected) button.classList.add("active")
            button.dataset.value = option.value
            button.textContent = option.textContent
            button.type = "button";
            button.addEventListener("click", this.valueSelected)
            dropdown.appendChild(button)
        })

        const noResults = document.createElement("div")
        noResults.innerHTML = `
            No results found for <span></span>
            <div>
                <button class="btn btn-text-primary mt-2" type="button">
                    <i class="fa-solid fa-undo" aria-hidden="true"></i>
                    Reset Search
                </button>
            </div>
        `;
        noResults.classList.add("d-none", "text-center");
        noResults.querySelector("button").addEventListener("click", () => {
            this.input.value = "";
            this.filterDropdown("");
            this.input.focus();
        })
        this.noResultsText = noResults;
        dropdown.appendChild(noResults);

        this.dropdown = dropdown;
        this.appendChild(dropdown)
    }

    valueSelected(e) {
        this.dropdown.classList.remove("show");
        this.originalSelect.value = e.target.dataset.value;
        this.originalSelect.dispatchEvent(new Event('change'));
        this.dropdown.querySelectorAll(".dropdown-item").forEach(button => button.classList.remove("active"));
        e.target.classList.add("active");
        this.hideDropdown();
    }

    filterDropdown(wordToSearch) {
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
            this.noResultsText.querySelector("span").textContent = this.input.value
            this.noResultsText.classList.remove("d-none");
        } else {
            this.noResultsText.classList.add("d-none");
        }
    }

    showDropdown() {
        if (this.dropdown.classList.contains("show")) return;

        this.dropdown.classList.add("show");
        this.input.value = "";
        this.input.placeholder = this.selectedOptionText();
        this.filterDropdown("");
        window.addEventListener("click", this.targetElementNotInsideComboBox);
        window.addEventListener("focusin", this.targetElementNotInsideComboBox);
    }

    targetElementNotInsideComboBox(e) {
        if (!this.contains(e.target)) this.hideDropdown()
    }

    selectedOptionText() {
        return this.originalSelect.options[this.originalSelect.selectedIndex].textContent;
    }

    hideDropdown() {
        this.dropdown.classList.remove("show");
        this.input.value = this.selectedOptionText();
        window.removeEventListener("click", this.targetElementNotInsideComboBox);
        window.removeEventListener("focusout", this.targetElementNotInsideComboBox);
    }
}

customElements.define('ds-combo-box', DsComboBox);