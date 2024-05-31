# frozen_string_literal: true

module BuildoutDesignSystem
  class Table
    class TableCell < ViewComponent::Base
      attr_reader :class_name, :header

      def initialize(class_name: '', header: false, **attrs)
        super(**attrs)
        @class_name = class_name
        @header = header
        @attrs = attrs
      end
    end
  end
end
