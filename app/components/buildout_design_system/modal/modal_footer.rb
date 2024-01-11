# frozen_string_literal: true

module BuildoutDesignSystem
  class Modal
    class ModalFooter < ViewComponent::Base

      def initialize(class_name: "", **attrs)
        super(**attrs)
        @class_name = class_name
        @attrs = attrs
      end
      
    end
  end
end