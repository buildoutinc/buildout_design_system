# frozen_string_literal: true

module BuildoutDesignSystem
  # @label Snackbar
  class SnackbarPreview < ViewComponent::Preview
    # @!group Snackbars
      # Snackbar
      # -------------------------
      # Snackbars are used for a quick message to the user with actionable items..
      #
      # @param title "Snackbar Title"
      # @param message "Message for Snackbar"
      # @param status select "Type of Snackbar" { choices: ["default", "success", "warning", "danger", "info"]}
      def default(title: "Snackbar Title", message: "Message for Snackbar", status: "default")
        render(Snackbar.new(title: title, message: message, status: status)) do |snack|
          snack.with_action do |action|
            action.render(Button.new()) do
              "Action"
            end
          end
        end
      end
  end
end
