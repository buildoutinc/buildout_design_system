module BuildoutDesignSystem
  # @label Layout
  class LayoutPreview < ViewComponent::Preview
    # @!group Layout
    # Layout
    # -------------------------
    # Layout helps you organize pages and sections of content.
    #
    # Layout will allow you to create layouts with easy, whether it's using CSS grids or Flex components.
    # To invoke you can use:
    # ```slim
    #  = component("Layout", **types, **otherAttributes) do | layout |
    #    = layout.with_column(**columnOptions, **otherColumnattributes) do
    #       # Your content here
    # ```
    #
    # @param type select { choices: [~, flex, grid] } "Type of Layout."
    # @param direction select { choices: [~,horizontal, vertical] } "Direction of the columns."
    # @param align select { choices: [~, start, center, end] } "How to Align the Columns?"
    # @param justify select { choices: [~, start, center, end, between, around] } "How to Spread the columns?"
    # @param gap number "Space between columns."
    # @param columns number "Number of columns."

    def default(type: "flex", direction: 'horizontal', align: 'start', justify: 'start', gap: 0, columns: 12)
      render_with_template(locals: {
        type: type,
        direction: direction,
        align: align,
        justify: justify,
        gap: gap,
        columns: columns
      })
    end

    def col_span(type: "flex", direction: "horizontal", align: "start", justify: "start", gap: 0, columns: 12)
      render_with_template(locals: {
        type: type,
        direction: direction,
        align: align,
        justify: justify,
        gap: gap,
        columns: columns
      })
    end

    def responsive(type: "flex", direction: "horizontal", align: "start", justify: "start", gap: 0, columns: 12)
      render_with_template(locals: {
        type: type,
        direction: direction,
        align: align,
        justify: justify,
        gap: gap,
        columns: columns
      })
    end
  end
end
