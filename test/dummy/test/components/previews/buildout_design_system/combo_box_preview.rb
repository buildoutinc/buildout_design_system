module BuildoutDesignSystem
  class ComboBoxPreview < ViewComponent::Preview
    # @param with_blank toggle
    # @param disable_search toggle
    def default(with_blank: false, disable_search: false)
      render_with_template(locals: {with_blank: with_blank, disable_search: disable_search})
    end

    # @param with_blank toggle
    def simple_form(with_blank: false)
      render_with_template(locals: {with_blank: with_blank})
    end

    def async_with_images
      render_with_template
    end

    def non_async_with_images
      render_with_template
    end
  end
end
