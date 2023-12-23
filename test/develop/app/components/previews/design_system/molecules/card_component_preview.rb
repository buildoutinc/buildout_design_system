module DesignSystem
  module Molecules
    # @label Cards
    class CardComponentPreview < ViewComponent::Preview
      # @!group Cards Styles
      # Card
      # -------------------------
      # Cards provide a small section for information.
      #
      # @param content  textarea "Card Text Body Content"
      def default(content: "test")
        render(BuildoutDesignSystem::Molecules::CardComponent.new(style: "width: 400px")) do |component|
          component.with_image(image_url: "https://via.placeholder.com/500")

          component.with_header do
            "My Card Header"
          end

          component.with_title(title: "My Awesome Card Title")          


            component.with_footer do
                button1 = component.render(BuildoutDesignSystem::Atoms::ButtonComponent.new({ variant: "primary", style: "contained", size: "sm" })) { "Button" }
                button2 = component.render(BuildoutDesignSystem::Atoms::ButtonComponent.new({ variant: "secondary", style: "contained", size: "sm" })) { "Button 2" }
              
              component.render(BuildoutDesignSystem::Molecules::ArgsDisplayComponent.new(button1, button2))


            end
        

      

          content


        end
      end

      def card_simple(content: "test")
        render(BuildoutDesignSystem::Molecules::CardComponent.new(style: "width: 400px")) do |component|

          component.with_title(title: "My Awesome Card Title")          

          content

        end
      end
      # @!endgroup
    end
  end
end
