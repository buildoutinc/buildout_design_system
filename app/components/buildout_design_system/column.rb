module BuildoutDesignSystem
  class Column < ViewComponent::Base
    
    def initialize(type: "flex", class_name: "", span: 'auto', breakpoints: {}, **attrs)
      super()
      
      @class_name = class_name
      @span = span == 'auto' && type == 'grid' ? '' : "-#{span}"
      @type = class_prefix(type)
      @breakpoints = breakpoints.map { |breakpoint, value| "#{@type}-#{breakpoint}-#{value}" }.join(' ')
      @attrs = attrs
    end

    def class_prefix(type)
      return type == "grid" ? "g-col" : "col"
    end

  end
end