# frozen_string_literal: true

module DesignSystem
  module Organisms
    # @label Empty State
    class EmptyStateCompomentPreview < ViewComponent::Preview
      # @!group Empty State

      # Empty State
      # -------------------------
      # Used in place of content where there is nothing to show.
      # This shows the user that they need to complete and action to see content.
      #
      # @param title "Title for the empty state"
      # @param icon "Icon Name from FontAwesome"
      # @param text "Helper text to display below the title"
      def default(title: "No Tasks to Display", icon: "fa-exclamation",
                  text: "Get started by clicking on the “New Task Button“")
        render(BuildoutDesignSystem::Organisms::EmptyStateComponent.new(title: title, icon: icon, text: text))
      end
      # @!group Empty State
    end
  end
end
