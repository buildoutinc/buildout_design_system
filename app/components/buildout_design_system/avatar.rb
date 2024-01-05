# frozen_string_literal: true

module BuildoutDesignSystem
  class Avatar < ViewComponent::Base
    SIZES = {
      sm: "sm",
      md: "md",
      lg: "lg"
    }.freeze

    def initialize( # rubocop:disable Lint/MissingSuper
      images: [],
      size: "sm"
    )

      @images = images.is_a?(Array) ? images : [images]
      @size_class = SIZES[size.to_sym] ? "avatar-#{size}" : ""
    end
  end
end
