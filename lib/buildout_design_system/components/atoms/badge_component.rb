# frozen_string_literal: true

module DesignSystem
  module Atoms
    class BadgeComponent < ViewComponent::Base
      VARIANTS = {
        primary: "primary",
        secondary: "secondary",
        success: "success",
        danger: "danger",
        warning: "warning",
        info: "info",
        light: "light",
        dark: "dark"
      }.freeze

      DEFAULT_VARIANT = VARIANTS.fetch(:primary)

      def initialize(options = {}, **attrs)
        super(**attrs)
        @variant = VARIANTS.fetch(options[:variant]&.to_sym || :primary, DEFAULT_VARIANT)
        @icon = options[:icon]
        @class_name = options[:class_name]
        @placement = options.fetch(:placement, "start")
        @attrs = attrs
      end
    end
  end
end
