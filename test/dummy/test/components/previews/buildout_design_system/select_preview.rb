# frozen_string_literal: true

module BuildoutDesignSystem
  class SelectPreview < ViewComponent::Preview

    # Select
    # @param is_invalid toggle
    def default(is_invalid: false)
      render_with_template(locals: { is_invalid: is_invalid })
    end
  end
end