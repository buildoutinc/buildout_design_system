module BuildoutDesignSystem
  class Layout < ViewComponent::Base
    renders_many :columns, ->(span: "auto", class_name: '', breakpoints: {}) do
      BuildoutDesignSystem::Column.new(type: @type, span: span, class_name: class_name, breakpoints: breakpoints)
    end
    # renders_many :columns, -> do 
    #   BuildoutDesignSystem::Column.new(type: @type, span: span)
    # end

    DIRECTION = {
      horizontal: "flex-row",
      vertical: "flex-column"
    }

    ITEMS_ALIGN = {
      start: "align-items-start",
      center: "align-items-center",
      end: "align-items-end"
    }

    JUSTIFY_CONTENT = {
      start: "justify-content-start",
      center: "justify-content-center",
      end: "justify-content-end",
      between: "justify-content-between",
      around: "justify-content-around"
    }

    TYPES = {
      flex: "row",
      grid: "grid"
    }

    attr_reader :type

    def initialize(class_name: "", type: "flex", gap: 0, direction: "horizontal", align: "start", justify: "start", columns: 12, **attrs)
      super(**attrs)
      @class_name = class_name
      @gap = gap
      @type = TYPES[type.to_sym] || TYPES[:flex]
      @direction = DIRECTION[direction.to_sym] || DIRECTION[:horizontal]
      @align = ITEMS_ALIGN[align.to_sym] || ITEMS_ALIGN[:start]
      @justify = JUSTIFY_CONTENT[justify.to_sym] || JUSTIFY_CONTENT[:start]
      @attrs = attrs
      @columns = "columns-#{columns}"
    end
  end
end