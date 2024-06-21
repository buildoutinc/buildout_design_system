module BuildoutDesignSystem
  # @label Toggle
  class TogglePreview < ViewComponent::Preview
    # @!group Toggle

    # Toggle Switch
    # -------------------------
    # This is a toggle switch. It's main purpose is to allow a user to see when a feature is active or not.
    # It has two options, one being `verbose` and the other being `simple`.
    #
    def default
      render(Toggle.new(checked: false, value: 1, disabled: false, variant: "simple", id: "test"))
    end

    # @param on_icon
    # @param off_icon
    def verbose(on_icon: "", off_icon: "")
      render(Toggle.new(checked: true, value: 1, disabled: false, variant: "verbose", id: "test-verbose", on_icon: on_icon, off_icon: off_icon))
    end

    # @param variant select ["simple", "verbose"]
    def simple_form(variant: "simple")
      render_with_template(locals: { variant: variant })
    end
    # @!endgroup
  end
end