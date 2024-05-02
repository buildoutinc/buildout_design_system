# frozen_string_literal: true

module BuildoutDesignSystem
  class Badge < ViewComponent::Base
    VARIANTS = {
      primary: "primary",
      secondary: "secondary",
      success: "success",
      danger: "danger",
      warning: "warning",
      info: "info",
      neutral: "neutral",
    }.freeze

    SIZES = {
      default: "default",
      sm: "sm",
      xs: "xs",
    }.freeze

    DEFAULT_VARIANT = VARIANTS.fetch(:primary)
    DEFAULT_SIZE = SIZES.fetch(:default)

    def initialize(options = {}, **attrs)
      super(**attrs)
      @variant = VARIANTS.fetch(options[:variant]&.to_sym || :primary, DEFAULT_VARIANT)
      @size = SIZES.fetch(options[:size]&.to_sym || :default, DEFAULT_SIZE)
      @icon = options[:icon]
      @class_name = options[:class_name]
      @placement = options.fetch(:placement, "start")
      @attrs = attrs
    end
  end
end
