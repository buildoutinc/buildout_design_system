module BuildoutDesignSystem
  # @label Toggle
  class TogglePreview < ViewComponent::Preview
    
    def default()
      render(Toggle.new(checked: false, value: 1, disabled: false, variant: "simple", id: "test"))
    end
  end
end