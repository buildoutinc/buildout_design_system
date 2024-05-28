# frozen_string_literal: true

module BuildoutDesignSystem
  class TooltipPreview < ViewComponent::Preview
    # @!group Tooltip

    # Tooltip
    # -------------------------
    # tooltip used to show data on hover
    # @param placement select ["top", "bottom", "left", "right"]
    # @param class_name "Class for custom tooltip styling"
    def default(placement: "", class_name: "")
      render_with_template(locals: {
        placement: placement,
        class_name: class_name
      })
    end

    # @!endgroup
  end
end
