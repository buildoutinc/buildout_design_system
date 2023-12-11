# frozen_string_literal: true

module BuildoutDesignSystem
  module Molecules
    class ModalComponent < ViewComponent::Base
      renders_one :header, "ModalHeaderComponent"
      renders_one :body, "ModalBodyComponent"
      renders_one :footer, "ModalFooterComponent"

      SIZES = {
        sm: "modal-sm",
        lg: "modal-lg",
        xl: "modal-xl"
      }.freeze

      def initialize(class_name: "", size: nil, centered: false, **attrs)
        super(**attrs)
        @class_name = class_name
        @attrs = attrs
        @size = SIZES.fetch(size&.to_sym, nil)
        @centered = centered
      end

      class ModalHeaderComponent < ViewComponent::Base
        attr_reader :class_name, :title

        def initialize(class_name: "", title: nil)
          super()
          @class_name = class_name
          @title = title
        end

        def call
          content_tag :div, { class: "modal-header #{class_name}" } do
            if title
              content_tag :h5, title, { class: "modal-title" }
            else
              content
            end
          end
        end
      end

      class ModalBodyComponent < ViewComponent::Base
        attr_reader :class_name

        def initialize(class_name: "")
          super()
          @class_name = class_name
        end

        def call
          content_tag :div, content, { class: "modal-body #{class_name}" }
        end
      end

      class ModalFooterComponent < ViewComponent::Base
        attr_reader :class_name

        def initialize(class_name: "")
          super()
          @class_name = class_name
        end

        def call
          content_tag :div, content, { class: "modal-footer #{class_name}" }
        end
      end
    end
  end
end
