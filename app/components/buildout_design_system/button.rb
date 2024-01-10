# frozen_string_literal: true

module BuildoutDesignSystem
  class Button < ViewComponent::Base
    TYPES = {
      primary: "-secondary",
      secondary: "-primary",
      success: "-success",
      danger: "-danger",
      warning: "-warning",
      info: "-info",
      light: "-light",
      dark: "-dark"
    }.freeze

    SUB_TYPES = {
      contained: "",
      outline: "-outline",
      text: "-text",
      shaded: "-shaded"
    }.freeze

    BTN_SIZES = {
      sm: "btn-sm",
      md: "",
      lg: "btn-lg"
    }.freeze

    DEFAULT_TYPE = TYPES.fetch(:primary)
    DEFAULT_SUB_TYPE = SUB_TYPES.fetch(:contained)

    BASE_CLASS = %w[btn].freeze

    def initialize(options = {}, **attrs)
      super(**attrs)
      @variant = TYPES.fetch(options[:variant]&.to_sym || :primary, TYPES[:primary])
      @style = SUB_TYPES.fetch(options[:style]&.to_sym || :contained, SUB_TYPES[:contained])
      @size = BTN_SIZES.fetch(options[:size]&.to_sym || :md, BTN_SIZES[:md])
      @path = options[:path]
      @icon = options[:icon]
      @placement = options.fetch(:placement, "start")
      @class_name = options[:class_name]
      @attrs = attrs
    end
  end
end
