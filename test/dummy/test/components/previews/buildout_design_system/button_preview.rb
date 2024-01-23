# frozen_string_literal: true

# rubocop:disable Metrics/ParameterLists
module BuildoutDesignSystem
  class ButtonPreview < ViewComponent::Preview
    # @!group Contained Buttons

    # Primary Button
    # -------------------------
    # This is the button to call primary actions. This shoudl be used when we're trying to get the user to do something.
    # You can use it with the helper of 
    # ```ruby
    # component "atoms/button", options: {}, other_options: {}` do
    #   "Button"
    # end
    #```
    #
    # @param content "Label for the button"
    # @param icon "Icon Name from FontAwesome"
    # @param placement "Location of Icon" select ["start", "end"]
    # @param variant select ["primary", "secondary", "success", "danger", "warning", "info", "light", "dark"]
    # @param style select ["contained", "outline", "text", "shaded"]
    # @param size select ["sm", "md", "lg"]
    # @param class_name "Additional Classes to add to the button"
    # @param icon_only toggle "If you want to use the button as an icon only button"
    def default(variant: "primary", style: "", content: "Button", icon: nil, placement: "start", class_name: "", size: "md", icon_only: false)
      # render(DesignSystem::Atoms::ButtonComponent.new({ variant: variant, style: style, size: size, icon: icon, placement: placement, class_name: class_name })) do
      render(Button.new({ variant: variant, style: style, size: size, icon: icon, placement: placement, class_name: class_name, icon_only: icon_only })) do
        content
      end
    end

    # @param path "Link Path"
    def link(variant: "primary", style: "", content: "Button", icon: nil, placement: "start", class_name: "", size: "md", icon_only: false, path: "https://google.com")
      render(Button.new({ variant: variant, style: style, size: size, icon: icon, placement: placement, class_name: class_name, icon_only: icon_only, path: path})) do
        content
      end
    end

    # @!endgroup
  end
end
# rubocop:enable Metrics/ParameterLists
