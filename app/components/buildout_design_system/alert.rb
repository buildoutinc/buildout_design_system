# frozen_string_literal: true

module BuildoutDesignSystem
  class Alert < ViewComponent::Base
    STATUSES = {
      info: "info",
      success: "success",
      error: "danger",
      warning: "warning"
    }.freeze

    DEFAULT_ICONS = {
      info: "fa-info-circle",
      success: "fa-check-circle",
      error: "fa-exclamation-circle",
      warning: "fa-exclamation-triangle"
    }.freeze

    def initialize( # rubocop:disable Lint/MissingSuper
      status: "info",
      icon: nil,
      title: nil,
      class_name: "",
      dismissable: false,
      **attrs
    )
      @status = STATUSES.fetch(status.to_sym) || "info"
      @icon =  icon || DEFAULT_ICONS.fetch(status.to_sym)
      @title = title
      @class_name = class_name
      @dismissable = dismissable
      @attrs = attrs
    end
  end
end
