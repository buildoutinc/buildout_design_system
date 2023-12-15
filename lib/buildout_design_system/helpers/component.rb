module BuildoutDesignSystem
  module Helpers
    module Component
      def component(name, *args, **kwargs, &block)
        component = "BuildoutDesignSystem::#{name.to_s.camelize}Component".constantize
        render(component.new(*args, **kwargs), &block)
      end
    end
  end
end
