# frozen_string_literal: true

module BuildoutDesignSystem
  class Tabs < ViewComponent::Base
    renders_many :tabs, BuildoutDesignSystem::Tab

    VARIANTS = {
      default: "nav-tabs",
      pills: "nav-pills",
      square: "nav-pills nav-square",
      vertical: "nav-pills",
      text: "nav-text"
    }.freeze

    DIRECTION = {
      horizontal: "flex-row",
      vertical: "flex-column",
    }

    def initialize(class_name: "", variant: "nav-tabs", direction: DIRECTION[:horizontal], **attrs)
      super(**attrs)
      @variant = VARIANTS.fetch(variant.to_sym || :default, VARIANTS[:default])
      @direction = DIRECTION.fetch(direction&.to_sym || :horizontal, DIRECTION[:horizontal])
      @class_name = class_name
      @attrs = attrs
    end
  end
end
