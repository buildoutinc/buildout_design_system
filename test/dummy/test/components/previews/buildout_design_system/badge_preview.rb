# frozen_string_literal: true

module BuildoutDesignSystem
  class BadgePreview < ViewComponent::Preview
    # @!group Badges

    # Badges
    # -------------------------
    # Badges can be used to display special information that we we can use to put emphasis on a piece of content.
    #
    # @param content "Label for the badge"
    # @param icon "Icon Name from FontAwesome"
    # @param variant select ["primary", "secondary", "neutral", "success", "danger", "warning", "info"]
    # @param size select ["", "lg"]
    def default(variant: "primary", content: "Label", icon: "fa-map-pin", size: nil)
      render(::BuildoutDesignSystem::Badge.new({ variant: variant, icon: icon, size: size })) do
        content
      end
    end

    # @!endgroup
  end
end
