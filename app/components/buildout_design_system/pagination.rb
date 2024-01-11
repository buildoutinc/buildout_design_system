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

    ALIGNMENT = {
      left: "justify-content-start",
      center: "justify-content-center",
      right: "justify-content-end"
  }.freeze

    def initialize(options: {}, **attrs)
      super(**attrs)
      @options = options
      @align = ALIGNMENT[options[:align].to_sym] || ALIGNMENT[:left]
      @attrs = attrs
    end

  end
end