# frozen_string_literal: true

module BuildoutDesignSystem
  class Accordion < ViewComponent::Base
    renders_many :accordion_items, ::BuildoutDesignSystem::Accordion::AccordionItem

    def initialize( # rubocop:disable Lint/MissingSuper
      variant: "primary"
    )
      @variant = variant
    end
  end
end
