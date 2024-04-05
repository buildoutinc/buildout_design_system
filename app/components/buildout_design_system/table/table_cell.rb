# frozen_string_literal: true

module BuildoutDesignSystem
  class Table
    class TableCell < ViewComponent::Base
      attr_reader :class_name

      def initialize(class_name: '', **attrs)
        super(**attrs)
        @class_name = class_name
        @attrs = attrs
      end
    end
  end
end
