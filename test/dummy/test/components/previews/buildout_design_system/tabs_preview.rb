module BuildoutDesignSystem
  class TabsPreview < ViewComponent::Preview
    # @param content_class_name "A class string for the div around all tab panes"
    # @param tabs "An array of instances of or parameters for DesignSystem::Tab" { disabled: true }
    # @param variant [Symbol] select "Secondary is for tabs in a container" { choices: [primary, secondary] }
    def tab_group(
      content_class_name: nil,
      tabs: "", # rubocop:disable Lint/UnusedMethodArgument
      variant: :primary
    )
      render ::BuildoutDesignSystem::TabGroup.new(
        content_class_name: content_class_name,
        tabs: [
          {
            active: true,
            icon: "fa-house",
            label: "Tab 1",
            name: :tab1
          },
          {
            icon: "fa-magnifying-glass",
            label: "Tab 2",
            name: :tab2
          },
          {
            icon: "fa-user",
            label: "Tab 3",
            name: :tab3
          }
        ],
        variant: variant
      ) do |tab_group|
        tab_group.with_tab_pane(name: :tab1, active: true) do
          "This is the first tab"
        end

        tab_group.with_tab_pane(name: :tab2) do
          "This is the second tab"
        end

        tab_group.with_tab_pane(name: :tab3) do
          "This is the third tab"
        end
      end
    end

    # @param active
    # @param label
    # @param icon "FontAwesome icon name"
    # @param name "Name of the tab for associating with other elements"
    #
    # @after_render :wrap_tab
    def tab(active: nil, icon: "fa-home", label: "Label", name: nil)
      render ::BuildoutDesignSystem::Tab.new(active: active, icon: icon, label: label, name: name)
    end

    private

    def wrap_tab(tab_html, _context)
      "<div class='nav'>#{tab_html}</div>"
    end
  end
end
