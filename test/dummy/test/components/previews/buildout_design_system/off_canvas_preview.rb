module BuildoutDesignSystem
  # @label Off Canvas / Side Drawer
  class OffCanvasPreview < ViewComponent::Preview
    # @!group Off Canvas / Side Drawer Styles
    # Off Canvas / Side Drawer
    # -------------------------
    # Off Canvas or Side drawers provide a way to display temporary information or action that interrupts the user flow.
    # @param title text "Title of the Off Canvas"
    # @param position select { choices: [~, start, end, top, bottom] } "Position of the Off Canvas"
    # @param class_name text " Additional Class names for the Off Canvas"

    def default(title: "Off Canvas Title", position: "start", class_name: "")
      render_with_template(locals: {
        title: title,
        position: position,
        class_name: class_name
      })
    end
    # @!endgroup
  end
end