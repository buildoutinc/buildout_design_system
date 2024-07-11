module BuildoutDesignSystem
  class Card < ViewComponent::Base
    def initialize(class_name: "", **attrs)
      super(**attrs)
      @class_name = class_name
      @attrs = attrs
    end
  end
end
