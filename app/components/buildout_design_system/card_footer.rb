module BuildoutDesignSystem
  class CardFooter < ViewComponent::Base
    attr_reader :class_name

    def initialize(class_name: "", **attrs)
      super()
      @class_name = class_name
      @attrs = attrs
    end
  end
end
