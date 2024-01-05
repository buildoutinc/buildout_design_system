# frozen_string_literal: true

module BuildoutDesignSystem
  class Accordion
    class AccordionItem < ViewComponent::Base
      attr_writer :parent_id

      renders_many :actions

      def initialize(title: nil, icon: nil) # rubocop:disable Lint/MissingSuper
        @title = title
        @icon = icon
        @id = (0...8).map { rand(65..90).chr }.join
      end
    end
  end
end
