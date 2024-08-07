module BuildoutDesignSystem
  # @label Card
  class CardPreview < ViewComponent::Preview
    # @!group Cards Styles
    # Card
    # -------------------------
    # Cards provide a small section for information.
    #
    # @param content  textarea "Card Text Body Content"
    def default(content: "Hello World!", title: "Card Title", image_url: "https://picsum.photos/200/200")
      render_with_template(locals: {
        content: content,
        title: title,
        image_url: image_url
      })
    end
  end
end
