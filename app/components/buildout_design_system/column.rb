module BuildoutDesignSystem
  class Column < ViewComponent::Base
    
    def initialize(class_name: "", type: "flex", span: nil)
      super()
      @class_name = class_name
      @span = span || "auto"
      # @attrs = attrs
      @type = type
    end

  end
end