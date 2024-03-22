# frozen_string_literal: true

module BuildoutDesignSystem
  class TabPane < ViewComponent::Base
    attr_reader :class_name, :active, :name
    def initialize(class_name: "", active: false, name: nil)
      super()
      @class_name = class_name
      @active = active
      @name = name
    end
  end
end
