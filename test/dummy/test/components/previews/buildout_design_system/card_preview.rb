module BuildoutDesignSystem
  # @label Card
  class CardPreview < ViewComponent::Preview
    # @!group Cards Styles
    # Card
    # -------------------------
    # Cards provide a small section for information.
    #
    # @param body  textarea "Card Text Body Content"
    def default(body: "Hello World!")
      render_with_template(locals: {
        body: body
      })
    end

    def with_header(body: "Hello World!", header: "Header")
      render_with_template(locals: {
        body: body,
        header: header
      })
    end

    def with_image(body: "Hello World!", title: "Card Title", image_url: "https://picsum.photos/200/200")
      render_with_template(locals: {
        body: body,
        title: title,
        image_url: image_url
      })
    end
  end
end
