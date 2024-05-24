# frozen_string_literal: true

module BuildoutDesignSystem
  class Tab < ViewComponent::Base
    def initialize(active: false, icon: nil, label: nil, name: nil, **attrs)
      super(**attrs)
      @icon = icon
      @label = label
      @name = name
      @class_names = attrs[:class] || ""
      @class_names += " active" if active
      @href = attrs[:href]

      @attrs = attrs.except(:class)
    end
  end
end
