# frozen_string_literal: true

module BuildoutDesignSystem
  # @label Progress
  class ProgressBarPreview < ViewComponent::Preview
    # @!group Progress Bar

    # Progress Bar (Default)
    # -------------------------
    # Progress Bar can give you the ability to give user feedback on the progress of a task. Whether is
    # uploading a file, or a form submission, the progress bar can help you communicate the progress of
    # the task.
    #
    # ## Usage
    # To call the progress bar, simply pass the following parameters to the component:
    # - `title`: The title of the progress bar. Do not include the color(:) The default title is `Progress` (only in default variant).
    # - `progress`: The percentage of progress (only on default variant).
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
    # @!group Steps
    # Progress Bar (Steps)
    # -------------------------
    # Steps are a great way to let the user know how long a process will take. It also gives the user
    # the notice of where they are currently with the task at hand (like filling out a long form)
    #
    # ## Usage
    # To call the steps progress bar, simply pass the following parameters to the component:
    # * `variant`: The variant of the progress bar. The default variant is `default`, write in `vertical`.
    # * `steps`: For the steps of the progress bar you need to pass an array of hashes with the following format:
    #
    # ```ruby
    # [
    #   {
    #     title: "Step 1",
    #     completed: true,
    #   },
    #   {
    #     title: "Step 2",
    #     completed: true,
    #   },
    #   {
    #     title: "Step 3",
    #     completed: false,
    #   }
    # ]
    # ```
    #

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