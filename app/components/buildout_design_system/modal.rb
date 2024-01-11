# frozen_string_literal: true

module BuildoutDesignSystem
  class Modal < ViewComponent::Base
    renders_one :header, ModalHeader
    renders_one :body, ModalBody
    renders_one :footer, ModalFooter

    SIZES = {
      sm: "modal-sm",
      lg: "modal-lg",
      xl: "modal-xl"
    }.freeze

    def initialize(class_name: "", size: nil, centered: false, **attrs)
      super(**attrs)
      @class_name = class_name
      @attrs = attrs
      @size = SIZES.fetch(size&.to_sym, nil)
      @centered = centered
    end    

  end
end
