module BuildoutDesignSystem
  class ComboBoxPreview < ViewComponent::Preview
    def default(class_name: "", label: "Combo Box", options: %w[First Second Third])
      render_with_template(locals: {
        class_name: class_name,
        label: label,
        options: options
      })
    end
  end
end
