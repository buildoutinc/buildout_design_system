# frozen_string_literal :true
module BuildoutDesignSystem
  class Toggle < ViewComponent::Base
    attr_reader :class_name, :label, :id, :checked, :name, :value, :disabled, :data

    VARIANT = {
      simple: "simple",
      verbose: "verbose"
    }.freeze

    def initialize(class_name: "", checked: false, value: nil, disabled: false, variant: VARIANT[:simple], on_icon: "", off_icon: "", **attrs)
      super(**attrs)
      @class_name = class_name
      @checked = checked
      @variant = VARIANT[variant.to_sym] || VARIANT[:simple]
      @name = name
      @value = value
      @disabled = disabled
      @id = attrs[:id] || generate_id
      @on_icon = on_icon
      @off_icon = off_icon
      @form_context = attrs[:form_context]
      @field_name = attrs[:field_name]
    end

    private

    def generate_id
      [*("A".."Z")].sample(10).join("")
    end
  end
end