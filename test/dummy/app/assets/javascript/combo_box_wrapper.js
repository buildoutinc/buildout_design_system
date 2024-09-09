const {useEffect, useRef} = React;
const {renderToStaticMarkup} = ReactDOMServer;

function ComboBoxWrapper({prefixClass, options, selectedValue, onChange, onRender}) {
    const comboBoxRef = useRef();

    useEffect(() => {
        comboBoxRef.current.addEventListener("selectChange", (e) => {
            onChange(e.detail.value)
        })
    }, [])

    useEffect(() => {
        if (typeof onRender !== "function") return;

        comboBoxRef.current.renderOption = (option) => renderToStaticMarkup(onRender(option));
    }, [])

    useEffect(() => {
        const customEvent = new CustomEvent("selectUpdated", {
            detail: {value: selectedValue}
        })
        comboBoxRef.current.dispatchEvent(customEvent);
    }, [selectedValue])

    return (
        <ds-combo-box prefix_class={prefixClass} ref={comboBoxRef}>
            <label className="form-label">Hello World</label>
            <select value={selectedValue} onChange={(e) => console.log("wow")}>
                {options.map(option => (
                    <option key={option.id} value={option.id}>{option.label}</option>
                ))}
            </select>
        </ds-combo-box>
    );
}
