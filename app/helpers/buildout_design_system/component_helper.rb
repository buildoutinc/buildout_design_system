module BuildoutDesignSystem
  module ComponentHelper

    def component(path, *args, **kwargs, &block)
      component = "Blueprint::#{path.to_s.camelize}".constantize
      render(component.new(*args, **kwargs), &block)
    end

    def unit(path, *args, **kwargs, &block)
      component "units/#{path}", *args, **kwargs, &block
    end

  end
end