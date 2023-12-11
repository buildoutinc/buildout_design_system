# frozen_string_literal: true

module BuildoutDesignSystem
  module Molecules
    class ArgsDisplayComponent < ViewComponent::Base
      def initialize(*args)
        @args = args
      end

      def display
        @args.join(" ").tr("\n", " ").html_safe
      end
    end
  end
end
