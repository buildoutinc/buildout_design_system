# frozen_string_literal: true

module BuildoutDesignSystem
  class Card
    class CardBody < ViewComponent::Base
      renders_one :title, CardTitle

      attr_reader :class_name

      def initialize(class_name: "", **attrs)
        super()
        @class_name = class_name
        @attrs = attrs
      end
    end
  end
end