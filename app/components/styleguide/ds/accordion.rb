# frozen_string_literal: true

module Styleguide
  module Ds
    class Accordion < ViewComponent::Base
      renders_many :accordion_items, ::Styleguide::Ds::Accordion::AccordionItem

      def initialize( # rubocop:disable Lint/MissingSuper
        variant: "primary"
      )
        @variant = variant
      end
    end
  end
end
