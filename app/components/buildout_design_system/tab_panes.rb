# frozen_string_literal: true

module BuildoutDesignSystem
  class TabPanes < ViewComponent::Base
    renders_many :tab_panes, BuildoutDesignSystem::TabPane

    def initialize(class_name: "", **attrs)
      super(**attrs)
      @class_name = class_name
      @attrs = attrs
    end
  end
end
