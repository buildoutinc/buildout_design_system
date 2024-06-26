# frozen_string_literal: true

module BuildoutDesignSystem
  class EmptyState < ViewComponent::Base
    def initialize( # rubocop:disable Lint/MissingSuper
      title:,
      text: nil,
      icon: "fa-exclamation",
      **attrs
    )
      @title = title
      @icon = icon
      @text = text
      @attrs = attrs
    end
  end
end
