# frozen_string_literal: true

module BuildoutDesignSystem
  class TabGroup < ViewComponent::Base
    renders_many :tab_panes, BuildoutDesignSystem::TabPane

    def initialize( # rubocop:disable Lint/MissingSuper
      content_class_name: nil,
      tabs: [],
      variant: :primary
    )
      @tabs = tabs.map do |tab|
        tab = BuildoutDesignSystem::Tab.new(tab) if tab.is_a?(Hash)
        tab
      end

      @class_names = [variant&.to_sym == :secondary ? "nav-tabs" : "nav-pills"]
      @content_class_name = content_class_name
    end
  end
end
