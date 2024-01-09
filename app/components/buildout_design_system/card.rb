module BuildoutDesignSystem
  class Card < ViewComponent::Base
    renders_one :header, "CardHeaderComponent"
    renders_one :image, "CardImageComponent"
    renders_one :title, "CardTitleComponent"
    renders_one :footer, "CardFooterComponent"

    def initialize(class_name: "", **attrs)
      super(**attrs)
      @class_name = class_name
      @attrs = attrs
    end

    class CardHeaderComponent < ViewComponent::Base
      attr_reader :class_name

      def initialize(class_name: "")
        super()
        @class_name = class_name
      end

      def call
        content_tag :span, content, { class: class_name }
      end
    end

    class CardImageComponent < ViewComponent::Base
      attr_reader :image_url, :class_name

      def initialize(image_url: "", class_name: "")
        super()
        @image_url = image_url
        @class_name = class_name
      end

      def call
        image_tag image_url, { class: "card-img-top #{class_name}" }
      end
    end

    class CardTitleComponent < ViewComponent::Base
      attr_reader :class_name

      def initialize(class_name: "", title: "")
        super()
        @class_name = class_name
        @title = title
      end

      def call
        content_tag :h5, @title, { class: "card-title #{class_name}" }
      end
    end

    class CardFooterComponent < ViewComponent::Base
      attr_reader :class_name

      def initialize(class_name: "")
        super()
        @class_name = class_name
      end

      def call
        content_tag :div, content, { class: "card-footer d-flex gap-2 #{class_name}" }
      end
    end
  end
end
