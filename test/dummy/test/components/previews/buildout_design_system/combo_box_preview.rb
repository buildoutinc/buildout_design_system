module BuildoutDesignSystem
  class ComboBoxPreview < ViewComponent::Preview
    # @param with_blank toggle
    def default(with_blank: false)
      render_with_template(locals: {with_blank: with_blank})
    end

    # @param with_blank toggle
    def simple_form(with_blank: false)
      render_with_template(locals: {with_blank: with_blank})
    end
  end
end
