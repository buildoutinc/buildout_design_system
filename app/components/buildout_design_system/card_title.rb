module BuildoutDesignSystem
  class CardTitle < ViewComponent::Base
    attr_reader :class_name

    def initialize(class_name: "", title: "", **attrs)
      super()
      @class_name = class_name
      @title = title
      @attrs = attrs
    end
  end
end
