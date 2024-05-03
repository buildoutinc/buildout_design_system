module BuildoutDesignSystem
  class DropdownItem < ViewComponent::Base

    def initialize(label: nil, path: nil, active: false, startIcon: nil, endIcon: nil, shortcut: nil, class_name: nil, **attrs)

      super(**attrs)
      @label = label
      @path = path
      @active = active
      @startIcon = startIcon
      @endIcon = endIcon
      @shortcut = shortcut
      @attrs = attrs
      @class_name = class_name
    end
  end
end