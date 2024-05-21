# frozen_string_literal :true

module BuildoutDesignSystem
  class Tooltip < ViewComponent::Base
    renders_one :title, "Title"

    PLACEMENTS = {
      top: "top",
      bottom: "bottom",
      left: "left",
      right: "right",
    }.freeze

    def initialize(**attrs)
      super(**attrs)
      @id = attrs[:id] || random_id
      @placement = PLACEMENTS[attrs[:placement]&.to_sym] || "top"
      @class = attrs[:class] || ""
    end

    def random_id
      charset = Array('A'..'Z') + Array('a'..'z')
      Array.new(20) { charset.sample }.join
    end

    class Title < ViewComponent::Base
      def call
        content
      end
    end
  end
end