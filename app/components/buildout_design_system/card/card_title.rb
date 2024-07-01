# frozen_string_literal: true

module BuildoutDesignSystem
  class Card
    class CardTitle < ViewComponent::Base
      attr_reader :class_name

      def initialize(class_name: "", title: "", **attrs)
        super()
        @class_name = class_name
        @title = title
        @attrs = attrs
      end

      def call
        content_tag :h5, @title, { class: "card-title #{class_name}", **@attrs}
      end
    end
  end
end