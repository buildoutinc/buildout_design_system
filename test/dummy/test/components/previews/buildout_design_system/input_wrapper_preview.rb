# frozen_string_literal: true

module BuildoutDesignSystem
  class InputWrapperPreview < ViewComponent::Preview
    # Input
    # -------------------------
    # Input wrapper to help with formatting a prefix or suffix addon to the input, a label, and a helper message.
    # @param type "text"
    # @param label "label"
    # @param required toggle
    # @param invalid toggle
    # @param disabled toggle
    # @param readonly toggle
    # @param helper_message "text"
    def with_prefix(type: "text", label: "test", required: false, disabled: false, invalid: false, helper_message: "helpful message", readonly: false)
      render_with_template(locals: {
        type: type,
        label: label,
        required: required,
        disabled: disabled,
        invalid: invalid,
        helper_message: helper_message,
        readonly: readonly
      })
    end

    # Input
    # -------------------------
    # Input wrapper to help with formatting a prefix or suffix addon to the input, a label, and a helper message.
    # @param type "text"
    # @param label "label"
    # @param required toggle
    # @param invalid toggle
    # @param disabled toggle
    # @param readonly toggle
    # @param helper_message "text"
    def with_prefix_and_suffix(type: "text", label: "test", required: false, disabled: false, invalid: false, helper_message: "helpful message", readonly: false)
      render_with_template(locals: {
        type: type,
        label: label,
        required: required,
        disabled: disabled,
        invalid: invalid,
        helper_message: helper_message,
        readonly: readonly
      })
    end

    # Input
    # -------------------------
    # Input wrapper to help with formatting a prefix or suffix addon to the input, a label, and a helper message.
    # @param type "text"
    # @param label "label"
    # @param required toggle
    # @param invalid toggle
    # @param disabled toggle
    # @param readonly toggle
    # @param helper_message "text"
    def with_suffix(type: "text", label: "test", required: false, disabled: false, invalid: false, helper_message: "helpful message", readonly: false)
      render_with_template(locals: {
        type: type,
        label: label,
        required: required,
        disabled: disabled,
        invalid: invalid,
        helper_message: helper_message,
        readonly: readonly
      })
    end
  end
end
