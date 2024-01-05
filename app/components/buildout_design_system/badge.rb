# frozen_string_literal: true

module BuildoutDesignSystem
  class Badge < ViewComponent::Base
    def initialize( # rubocop:disable Lint/MissingSuper
      variant: "primary",
      icon: nil,
      size: nil
    )
      @variant = ::BuildoutDesignSystem::Constants::THEMES.fetch(variant.to_sym)
      @icon = icon
      @size_class = size ? "badge-#{size}" : size
    end
  end
end
