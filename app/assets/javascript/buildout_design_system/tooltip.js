class DsTooltip extends HTMLElement {
    constructor() {
        super();
    }

    camelCaseAttribute(attributeName) {
        return attributeName.split("-").map((word, index) => {
            if (index === 0) return word.toLowerCase();

            return word.charAt(0).toUpperCase() + word.slice(1).toLowerCase();
        }).join("")
    }

    parseAttributes(attributeNames) {
        return attributeNames.reduce((accumulator, name) => {
            accumulator[this.camelCaseAttribute(name)] = this.getAttribute(name);
            return accumulator
        }, {})
    }

    connectedCallback() {
        const {templateId, placement, classes} = this.parseAttributes(["template-id", "placement", "classes"])
        const stringifiedHtml = document.getElementById(templateId).innerHTML;
        new bootstrap.Tooltip(this, {html: true, title: stringifiedHtml, placement: placement, customClass: classes})
    }
}

customElements.define('ds-tooltip', DsTooltip);