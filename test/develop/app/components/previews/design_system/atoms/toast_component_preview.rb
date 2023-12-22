# frozen_string_literal: true

module DesignSystem
  module Atoms
    class ToastComponentPreview < ViewComponent::Preview
      # @!group Toasts

      # Toasts
      # -------------------------
      # Toasts are used to display a message to the user. They are typically used to display a success or error message.
      #
      # @param title "Title for the toast"
      # @param icon "Icon for the toast"
      # @param type "Type of toast" select ["success", "error", "notice"]
      # @param content "Message on the Toast"
      def default(type: "success", title: "Success", content: "This is a success message", icon: nil)
        render_with_template(locals: {
          type: type,
          title: title,
          content: content,
          icon: icon
        })
      end

    end
  end
end
