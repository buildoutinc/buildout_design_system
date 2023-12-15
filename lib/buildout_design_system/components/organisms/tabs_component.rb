# frozen_string_literal: true

module BuildoutDesignSystem
  module Organisms
    class TabsComponent < ViewComponent::Base
      renders_many :tabs, BuildoutDesignSystem::Atoms::TabComponent
      renders_many :tab_panes, "TabPaneComponent"

      VARIANTS = {
        default: "nav-tabs",
        pills: "nav-pills"
      }.freeze

      def initialize(class_name: "", variant: "nav-tabs", **attrs)
        super(**attrs)
        @variant = VARIANTS.fetch(variant&.to_sym || :default, VARIANTS[:default])
        @class_name = class_name
        @attrs = attrs
      end

      class TabPaneComponent < ViewComponent::Base
        attr_reader :class_name, :active, :id

        def initialize(class_name: "", active: false, id: nil)
          super()
          @class_name = class_name
          @active = active
          @id = id
        end

        def call
          content_tag :div, content, { id: id, class: "tab-pane #{class_name}#{active ? " active" : ""}" }
        end
      end
    end
  end
end
