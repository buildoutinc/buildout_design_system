module BuildoutDesignSystem
  module ApplicationHelper
    def component(component_name, *args, **kwargs, &block)
      render(infer_class(component_name).new(*args, **kwargs), &block)
    end

    def infer_class(class_name)
      @@class_map ||= {}
      return @@class_map[class_name] if @@class_map[class_name].present?

      klass = "::BuildoutDesignSystem::#{class_name}".constantize
      @@class_map[class_name] = klass
      klass
    rescue
      raise "No such design system class: #{class_name}"
    end
  end
end
