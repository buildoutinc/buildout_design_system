# front_string_literal: true

module BuildoutDesignSystem
  # @label Pagination
  class PaginationPreview < ViewComponent::Preview
    # Pagination
    # -------------------------
    # Used to navigate between pages of content.
    #
    # @param prefix text "Prefix for pagination links"
    # @param total number "Total number of pages"
    # @param per_page number "Number of items per page"
    # @param current_page number "Current page number"
    # @param show_first_last toggle "Show first and last page links"
    # @param show_labels toggle "Show labels for pagination links"
    # @param show_jump_to toggle "Show jump to page input"
    def default(prefix: "page", total: 100, per_page: 10, current_page: 1, show_first_last: true, show_labels: true, show_jump_to: true)
      render_with_template(locals: {
        options: {
          prefix: prefix,
          total: total,
          per_page: per_page,
          current_page: current_page,
          show_first_last: show_first_last,
          show_labels: show_labels,
          show_jump_to: show_jump_to,
        }
      })
    end

  end
end