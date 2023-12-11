# frozen_string_literal: true

module BuildoutDesignSystem
  module Atoms
    class SnackbarComponent < ViewComponent::Base
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
end
