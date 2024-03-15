module BuildoutDesignSystem
  # @label Off Canvas / Side Drawer
  class OffCanvasPreview < ViewComponent::Preview
    # @!group Off Canvas / Side Drawer Styles
    # Off Canvas / Side Drawer
    # -------------------------
    # Off Canvas or Side drawers provide a way to display temporary information or action that interrupts the user flow.
    # @param position select { choices: [~, start, end, top, bottom] } "Position of the Off Canvas"
    # @param class_name text " Additional Class names for the Off Canvas"

    def default(position: "start", class_name: "")
      render_with_template(locals: {
        position: position,
        class_name: class_name
      })
    end
    # @!endgroup
  end
end
