# frozen_string_literal: true

module DesignSystem
  module Atoms
    class BadgeComponentPreview < ViewComponent::Preview
      # @!group Badges

      # Badges
      # -------------------------
      # Badges can be used to display special information that we we can use to put emphasis on a piece of content.
      #
      # @param content "Label for the badge"
      # @param icon "Icon Name from FontAwesome"
      # @param placement "Icon Placement" select ["start", "end"]
      # @param variant select [~, "primary", "secondary", "success", "danger", "warning", "info", "neutral"]
      def default(variant: "primary", content: "Label", icon: "fa-map-pin", placement: "start")
        # render(BuildoutDesignSystem::Atoms::BadgeComponent.new({ variant: variant, icon: icon, placement: placement })) do
        #   content
        # end
        render(BuildoutDesignSystem::Atoms::BadgeComponent.new({ variant: variant, icon: icon, placement: placement })) do
          content
        end
      end
      # @!endgroup
    end
  end
end
