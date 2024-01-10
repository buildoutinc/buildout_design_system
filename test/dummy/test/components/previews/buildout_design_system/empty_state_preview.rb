# frozen_string_literal: true

module BuildoutDesignSystem
  class EmptyStatePreview < ViewComponent::Preview
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
      render(::BuildoutDesignSystem::EmptyState.new(title: title, icon: icon, text: text))
    end
    # @!endgroup Empty State
  end
end
