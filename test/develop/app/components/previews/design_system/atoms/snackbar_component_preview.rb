# frozen_string_literal: true
module DesignSystem
  module Atoms
    # @label Snackbar
    class SnackbarComponentPreview < ViewComponent::Preview
      # @!group Snackbars
      # Snackbar
      # -------------------------
      # Snackbars are used for a quick message to the user with actionable items..
      #
      # @param title "Snackbar Title"
      # @param message "Message for Snackbar"
      def default(title: "Snackbar Title", message: "Message for Snackbar")
        render(BuildoutDesignSystem::Atoms::SnackbarComponent.new(title: title, message: message)) do |snack|
          snack.with_action do |action|
            action.render(BuildoutDesignSystem::Atoms::ButtonComponent.new()) do
              "Action"
            end
          end
        end
        
      end
    end
  end
end