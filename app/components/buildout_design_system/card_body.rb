module BuildoutDesignSystem
  class CardBody < ViewComponent::Base
    attr_reader :attrs, :class_name

    def initialize(class_name: "", **attrs)
      super()
      @class_name = class_name
      @attrs = attrs
    end
  end
end
