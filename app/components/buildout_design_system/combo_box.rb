# frozen_string_literal: true

module BuildoutDesignSystem
  class ComboBox < ViewComponent::Base
    def initialize(class_name: "", id: "", label: "", options: [])
      @id = id.presence || [*'A'..'Z'].sample(10).join
      @class_name = class_name
      @options = options
      @label = label
    end
  end
end
