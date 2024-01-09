# frozen_string_literal: true

module BuildoutDesignSystem
  class Toast < ViewComponent::Base
    def initialize(type: "success", title: nil, icon: nil, **attrs)
        super(**attrs)
        @type = type
        @title = title
        @attrs = attrs
        @icon = icon
      end
  end
end