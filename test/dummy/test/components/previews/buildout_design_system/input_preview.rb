# frozen_string_literal: true

module BuildoutDesignSystem
  class InputPreview < ViewComponent::Preview
    # Input
    # -------------------------
    # @param type "text"
    # @param invalid toggle
    # @param disabled toggle
    # @param readonly toggle
    def default(type: "text", disabled: false, invalid: false, readonly: false)
      render_with_template(locals: {
        type: type,
        readonly: readonly,
        disabled: disabled,
        invalid: invalid
      })
    end

    # Input
    # -------------------------
    # @param type "text"
    # @param invalid toggle
    # @param disabled toggle
    # @param readonly toggle
    def with_form(type: "text", disabled: false, invalid: false, readonly: false)
      render_with_template(locals: {
        type: type,
        readonly: readonly,
        disabled: disabled,
        invalid: invalid
      })
    end
  end
end
