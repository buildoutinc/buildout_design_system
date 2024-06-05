# frozen_string_literal: true

module BuildoutDesignSystem
  class Avatar < ViewComponent::Base
    SIZES = {
      sm: "sm",
      md: "md",
      lg: "lg"
    }.freeze

    def initialize(images: [], size: "sm", display_limit: nil)
      @images = Array.wrap(images)
      @size_class = SIZES[size.to_sym] ? "avatar-#{size}" : ""
      display_limit ||= @images.count

      @visible_images = @images[0..(display_limit - 1)]
      @hidden_images = @images[display_limit..]
    end
  end
end
