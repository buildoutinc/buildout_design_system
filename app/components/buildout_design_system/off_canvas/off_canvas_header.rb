# frozen_string_literal: true

module BuildoutDesignSystem
  class OffCanvas
    class OffCanvasHeader < ViewComponent::Base

      def initialize(class_name: "", title: '', **attrs)
        super(**attrs)
        @class_name = class_name
        @attrs = attrs
        @title = title
      end
    end
  end
end