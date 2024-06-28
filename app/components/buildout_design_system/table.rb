# frozen_string_literal: true

module BuildoutDesignSystem
  class Table < ViewComponent::Base
    renders_one :header, TableHeader
    renders_many :rows, TableRow

    attr_reader :class_name

    def initialize(class_name: '', **attrs)
      super(**attrs)
      @class_name = class_name
      @attrs = attrs
    end
  end
end
