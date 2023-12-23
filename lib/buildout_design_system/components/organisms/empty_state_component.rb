# frozen_string_literal: true

module BuildoutDesignSystem
  module Organisms
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
end
