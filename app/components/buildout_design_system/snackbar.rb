# frozen_string_literal: true

module BuildoutDesignSystem
  class Snackbar < ViewComponent::Base
    renders_one :action, "SnackBarActionComponent"

    STATUS = {
      default: nil,
      success: "success",
      warning: "warning",
      danger: "danger",
      info: "info"
    }.freeze

    ICON = {
      default: nil,
      success: "fa-circle-check",
      warning: "fa-exclamation-triangle",
      danger: "fa-exclamation-circle",
      info: "fa-info-circle"
    }

    def initialize(title:, message:, status: STATUS[:default], **attrs)
      super(**attrs)
      @title = title
      @message = message
      @status = STATUS.fetch(status&.to_sym, STATUS[:default])
      @status_icon = ICON.fetch(status&.to_sym, ICON[:default])
      @attrs = attrs
    end

    class SnackBarActionComponent < ViewComponent::Base
      def call
        content
      end
    end
  end
end
