# frozen_string_literal: true

module BuildoutDesignSystem
  class Modal
    class ModalHeader < ViewComponent::Base

      def initialize(class_name: "", title: nil)
        super()
        @class_name = class_name
        @title = title
      end

    end
  end
end