# frozen_string_literal: true

module BuildoutDesignSystem
  class InputWrapper < ViewComponent::Base
    renders_one :label, "Label"
    renders_one :prefix, "InputAddon"
    renders_one :suffix, "InputAddon"
    renders_one :input, ::BuildoutDesignSystem::Input
    renders_one :helper_message, "HelperMessage"

    def initialize(**attrs)
      @class_name = attrs[:class]
      @attrs = attrs.except(:class)
    end

    class HelperMessage < ViewComponent::Base
      attr_reader :attrs, :class_name

      def initialize(**attrs)
        super()
        @class_name = attrs[:class]
        @attrs = attrs.except(:class)
      end

      def call
        content_tag(:span, content, class: "d-block helper-message #{class_name}", **attrs)
      end
    end

    class Label < ViewComponent::Base
      attr_reader :attrs, :class_name

      def initialize(**attrs)
        super()
        @class_name = attrs[:class]
        @attrs = attrs.except(:class)
      end

      def call
        content_tag(:span, class: "d-flex gap-1 fw-bold") do
          span_content = content_tag :span, content, class: "fw-bold #{class_name}", **attrs
          span_content << content_tag(:span, " *", class: "text-danger") if attrs[:required]
          span_content
        end
      end
    end

    class InputAddon < ViewComponent::Base
      attr_reader :attrs, :class_name

      def initialize(**attrs)
        super()
        @class_name = attrs[:class]
        @attrs = attrs.except(:class)
      end

      def call
        content_tag :span, content, { class: "input-group-text #{class_name}", **attrs }
      end
    end
  end
end
