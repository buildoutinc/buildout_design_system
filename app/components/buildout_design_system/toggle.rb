# frozen_string_literal :true
module BuildoutDesignSystem
  class Toggle < ViewComponent::Base
    attr_reader :class_name, :label, :id, :checked, :name, :value, :disabled, :data

    def initialize(class_name: "", checked: false, value: nil, disabled: false, **attrs)
      super(**attrs)
      @class_name = class_name
      @checked = checked
      @name = name
      @value = value
      @disabled = disabled
      @id = attrs[:id]
    end

  end
end