# frozen_string_literal: true

module BuildoutDesignSystem
  class Input < ViewComponent::Base
    def initialize(form_context: nil, field_name: nil, **attrs)
      @form_context = form_context
      @field_name = field_name
      @class_name = attrs[:class]
      @attrs = attrs.except(:class, :type)
      @type = attrs[:type] || "text"
    end
  end
end
