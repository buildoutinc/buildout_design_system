# frozen_literal_string: true

module BuildoutDesignSystem
  class ProgressBar < ViewComponent::Base
    
    VARIANTS = {
      default: "",
      vartical: "vertical",
    }

    def initialize(variant, steps: [], progress: 0, total: nil, **attrs)
      super(**attrs)
      @variant = VARIANTS.fetch(variant&.to_sym || :default, VARIANTS[:default])
      @steps = steps
      @progress = progress
      @total = total
      @attrs = attrs
    end
  end
end