#frozen_string_literal: true

module BuildoutDesignSystem
  class OffCanvas
    class OffCanvasBody < ViewComponent::Base

      def initialize(class_name: "", **attrs)
        super(**attrs)
        @class_name = class_name
        @attrs = attrs
      end
    end
  end
end
