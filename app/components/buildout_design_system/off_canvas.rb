# frozen_string_literal: true

module BuildoutDesignSystem
  class OffCanvas < ViewComponent::Base
    renders_one :header, OffCanvasHeader
    renders_one :body, OffCanvasBody
    renders_one :footer, OffCanvasFooter

    POSITIONS = {
      start: "offcanvas-start",
      end: "offcanvas-end",
      top: "offcanvas-top",
      bottom: "offcanvas-bottom"
    }.freeze

    def initialize(class_name: "", position: nil, **attrs)
      super(**attrs)
      @class_name = class_name
      @attrs = attrs
      @position = POSITIONS.fetch(position&.to_sym, nil) || POSITIONS[:start]
    end
  end
end