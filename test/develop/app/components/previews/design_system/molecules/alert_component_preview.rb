# frozen_string_literal: true
module DesignSystem
  module Molecules
    class AlertComponentPreview < ViewComponent::Preview
      # @!group Banner/Alert

      # Banner / Alert
      # -------------------------
      # Banners are used to display important information to the user.They can use various
      # colors and attributes to convey the severity of the message. They can also become
      # dismissable.
      #
      # @param status select "The status of the banner" { choices: ["info", "success", "error", "warning"] }
      # @param icon "Icon Name from FontAwesome including the fa- prefix"
      # @param title "Title of the banner"
      # @param content "Message of the banner"
      # @param class_name "Additional Classes to add to the banner"
      # @param dismissable toggle "Boolean to determine if the banner is dismissable"
      def default(  # rubocop:disable Metrics/ParameterLists
        status: "info",
        icon: "fa-info-circle",
        title: "Alert Title",
        class_name: "",
        dismissable: false,
        content: "This is the banner message"
      )
        render(DesignSystem::Molecules::AlertComponent.new(
                status: status,
                icon: icon,
                title: title,
                class_name: class_name,
                dismissable: dismissable
              )) do
          content
        end
      end
      # @!endgroup
    end
  end
end