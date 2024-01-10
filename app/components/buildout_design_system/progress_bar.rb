# frozen_literal_string: true

module BuildoutDesignSystem
  class ProgressBar < ViewComponent::Base
    
    VARIANTS = {
      default: "",
      vertical: "vertical",
    }

    def initialize(variant: "default", title: nil, steps: [], progress: 0, **attrs)
      super(**attrs)
      @variant = VARIANTS.fetch(variant&.to_sym || :default, VARIANTS[:default])
      @steps = steps
      @progress = progress
      @title = title
      @attrs = attrs
    end
  end
end