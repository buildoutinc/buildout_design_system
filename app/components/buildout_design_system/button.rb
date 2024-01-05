# frozen_string_literal: true

module BuildoutDesignSystem
  class Button < ViewComponent::Base
    THEMES = ::BuildoutDesignSystem::Constants::THEMES.merge(
      primary: "secondary",
      secondary: "primary"
    ).freeze

    SUB_TYPES = {
      contained: "",
      outline: "-outline"
    }.freeze

    def initialize( # rubocop:disable Lint/MissingSuper,Metrics/ParameterLists
      variant: "primary",
      style: "",
      icon: nil,
      path: nil,
      placement: "start",
      class_name: ""
    )
      @variant = THEMES.fetch(variant.to_sym)
      @style = SUB_TYPES[style.to_sym]
      @path = path
      @icon = icon
      @placement = placement
      @class_name = class_name
    end
  end
end
