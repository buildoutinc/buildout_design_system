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

    STYLES = {
      default: "",
      outline: "outline"
    }.freeze

    DEFAULT_VARIANT = VARIANTS.fetch(:primary)
    DEFAULT_SIZE = SIZES.fetch(:default)
    DEFAULT_STYLE = STYLES.fetch(:default)

    def initialize(options = {}, **attrs)
      values = options.merge(attrs)
      super(**attrs)
      @size = SIZES.fetch(values[:size]&.to_sym || :default, DEFAULT_SIZE)
      @icon = values[:icon]
      @class_name = values[:class_name] || values[:class]
      @placement = values.fetch(:placement, "start")
      @attrs = values.except(values_to_not_spread)
      @variant = badge_variant(values)
    end

    private

    def badge_variant(values)
      variant = VARIANTS.fetch(values[:variant]&.to_sym || :primary, DEFAULT_VARIANT)
      style = STYLES.fetch(values[:style]&.to_sym || :default, DEFAULT_STYLE)

      [variant, style].reject(&:blank?).join("-")
    end

    def values_to_not_spread
      [:class, :class_name, :icon, :size, :variant]
    end
  end
end
