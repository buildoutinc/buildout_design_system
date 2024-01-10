# frozen_string_literal: true

module BuildoutDesignSystem
  class Tabs < ViewComponent::Base
    renders_many :tabs, BuildoutDesignSystem::Tab
    renders_many :tab_panes, BuildoutDesignSystem::TabPane

    VARIANTS = {
      default: "nav-tabs",
      pills: "nav-pills",
      square: "nav-pills nav-square",
    }.freeze

    def initialize(class_name: "", variant: "nav-tabs", **attrs)
      super(**attrs)
      @variant = VARIANTS.fetch(variant&.to_sym || :default, VARIANTS[:default])
      @class_name = class_name
      @attrs = attrs
    end
  end
end
