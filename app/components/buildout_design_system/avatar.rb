# frozen_string_literal: true

module BuildoutDesignSystem
  class Avatar < ViewComponent::Base
    SIZES = {
      sm: "sm",
      md: "md",
      lg: "lg"
    }.freeze

    def initialize(images: [], size: "sm")

      @images = Array.wrap(images)
      @size_class = SIZES[size.to_sym] ? "avatar-#{size}" : ""
    end
  end
end
