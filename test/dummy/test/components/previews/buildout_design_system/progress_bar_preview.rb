# frozen_string_literal: true

module BuildoutDesignSystem
  # @label Progress
  class ProgressBarPreview < ViewComponent::Preview
    # @!group Progress Bar

    # Progress Bar
    # -------------------------
    # Used in place of content where there is nothing to show.
    # This shows the user that they need to complete and action to see content.
    #
    # @param title text "Label for Progress Bar (optional)"
    # @param progress number "Percentage of progress"
    def default(variant: "default", title: "Progress", steps: [], progress: 35)
      render_with_template(locals: {
        variant: variant,
        title: title,
        steps: steps,
        progress: progress
      })
    end
    # @!endgroup Progress Bar
    def steps() 
      steps = [
        {
          title: "Step 1",
          completed: true,
        },
        {
          title: "Step 2",
          completed: true,
        },
        {
          title: "Step 3",
          completed: false,
        }
      ]
      render_with_template(locals: {
        steps: steps
      })
    end
  end
end