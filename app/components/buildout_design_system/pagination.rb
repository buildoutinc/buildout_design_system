# frozen_string_literal: true

module BuildoutDesignSystem
  class Pagination < ViewComponent::Base
    # options:
    # prefix
    # total
    # per_page
    # current_page
    # show_first_last
    # show_labels
    # show_jump_to
    def initialize(options: {}, **attrs)
      super(**attrs)
      @options = options
      @attrs = attrs
    end

  end
end