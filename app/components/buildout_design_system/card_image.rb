module BuildoutDesignSystem
  class CardImage < ViewComponent::Base
    attr_reader :image_url, :class_name

    def initialize(image_url: "", class_name: "")
      super()
      @image_url = image_url
      @class_name = class_name
    end
  end
end
