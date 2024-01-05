# frozen_string_literal: true

module BuildoutDesignSystem
  class EmptyState < ViewComponent::Base
    def initialize( # rubocop:disable Lint/MissingSuper
      title:,
      text: nil,
      icon: "fa-exclamation"
    )
      @title = title
      @icon = icon
      @text = text
    end
  end
end
