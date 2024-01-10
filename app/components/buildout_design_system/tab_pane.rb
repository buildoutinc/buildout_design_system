# frozen_string_literal: true

module BuildoutDesignSystem
  class TabPane < ViewComponent::Base
    attr_reader :class_name, :active, :id
    def initialize(class_name: "", active: false, id: nil)
      super()
      @class_name = class_name
      @active = active
      @id = id
    end
  end
end
