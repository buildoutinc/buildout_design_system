# frozen_string_literal: true

module BuildoutDesignSystem
  class Modal
    class ModalHeader < ViewComponent::Base

      def initialize(class_name: "", title: nil, **attrs)
        super()
        @class_name = class_name
        @title = title
        @attrs = attrs
      end

    end
  end
end