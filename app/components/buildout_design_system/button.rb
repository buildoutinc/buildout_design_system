# frozen_string_literal: true

module BuildoutDesignSystem
  class Button < ViewComponent::Base
    TYPES = {
      primary: "-secondary",
      secondary: "-primary",
      neutral: "-neutral",
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
      raise ArgumentError, "To use :icon_only, you must also pass :icon" if options[:icon_only] && !options[:icon]

      super(**attrs)
      values = options.merge(attrs)
      @variant = TYPES.fetch(values[:variant]&.to_sym || :primary, TYPES[:primary])
      @style = SUB_TYPES.fetch(values[:style]&.to_sym || :contained, SUB_TYPES[:contained])
      @size = BTN_SIZES.fetch(values[:size]&.to_sym || :md, BTN_SIZES[:md])
      @path = values[:path]
      @icon = values[:icon]
      @icon_only = values[:icon_only] || false
      @placement = values.fetch(:placement, "start")
      @class_name = values[:class_name] || values[:class]
      @attrs = values.except(values_to_not_spread)
    end

    private

    def values_to_not_spread
      [:class, :class_name, :variant, :style, :size, :path, :icon, :icon_only, :placement]
    end
  end
end
