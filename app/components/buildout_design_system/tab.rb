# frozen_string_literal: true

module BuildoutDesignSystem
  class Tab < ViewComponent::Base
    def initialize(active: false, icon: nil, label: nil, name: nil) # rubocop:disable Lint/MissingSuper
      @icon = icon
      @label = label
      @name = name

      @class_names = []
      @class_names << "active" if active
    end
  end
end
