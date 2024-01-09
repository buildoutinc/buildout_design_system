# frozen_string_literal: true

module BuildoutDesignSystem
  class Snackbar < ViewComponent::Base
    renders_one :action, "SnackBarActionComponent"

      def initialize(title:, message:, **attrs)
        super(**attrs)
        @title = title
        @message = message
        @attrs = attrs
      end

      class SnackBarActionComponent < ViewComponent::Base
        def call
          content
        end
      end
  end
end
