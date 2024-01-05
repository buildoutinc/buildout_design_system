# frozen_string_literal: true

# rubocop:disable Metrics/ParameterLists
module DesignSystem
  class ButtonPreview < ViewComponent::Preview
    # @!group Contained Buttons

    # Primary Button
    # -------------------------
    # This is the button to call primary actions. This shoudl be used when we're trying to get the user to do something.
    #
    # @param content "Label for the button"
    # @param icon "Icon Name from FontAwesome"
    # @param placement "Location of Icon" select ["start", "end"]
    # @param variant select ["primary", "secondary", "neutral", "success", "danger", "warning", "info", "light", "dark"]
    # @param style select ["contained", "outline"]
    # @param class_name "Additional Classes to add to the button"
    def default(variant: "primary", style: "", content: "Button", icon: nil,
                placement: "start", class_name: "")
      render(::DStyleguide::Ds::Button.new(variant: variant, style: style, icon: icon,
                                        placement: placement, class_name: class_name)) do
        content
      end
    end

    # @param path "Link Path"
    def link(variant: "primary", style: "", content: "Button", icon: nil,
             placement: "start", class_name: "", path: "https://google.com")
      render(::Styleguide::Ds::Button.new(variant: variant, style: style, icon: icon,
                                        placement: placement, class_name: class_name, path: path)) do
        content
      end
    end

    # @!endgroup
  end
end
# rubocop:enable Metrics/ParameterLists
