module DesignSystem
  module Molecules
    # @label Modals
    class ModalComponentPreview < ViewComponent::Preview
      # @!group Modals Styles
      # Modal
      # -------------------------
      # Modals provide a small section for information.
      # @param size select { choices: [~, sm, lg, xl] } "Size for Modal"
      # @param centered toggle "Is the modal centered in the page?"
      def default(size: nil, centered: false); 
        render_with_template(locals: {
          size: size,
          centered: centered
        })
      end
      # @!endgroup
    end
  end
end
