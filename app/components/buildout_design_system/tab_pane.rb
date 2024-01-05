# frozen_string_literal: true

module BuildoutDesignSystem
  class TabPane < ViewComponent::Base
    def initialize(active: false, name: nil) # rubocop:disable Lint/MissingSuper
      @name = name

      @class_name = "active" if active
    end
  end
end
