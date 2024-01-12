# frozen_string_literal :true
module BuildoutDesignSystem
  class Toggle < ViewComponent::Base
    attr_reader :class_name, :label, :id, :checked, :name, :value, :disabled, :data

    VARIANT = {
      simple: "simple",
      verbose: "verbose"
    }


    def initialize(class_name: "", checked: false, value: nil, disabled: false, variant: VARIANT[:simple], **attrs)
      super(**attrs)
      @class_name = class_name
      @checked = checked
      @variant = VARIANT[variant.to_sym] || VARIANT[:simple]
      @name = name
      @value = value
      @disabled = disabled
      @id = attrs[:id]
    end

  end
end