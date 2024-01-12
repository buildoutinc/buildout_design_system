module ComponentHelper
  def component(path, *args, **kwargs)
    name = path
      .to_s
      .split('/')
      .last

    class_name = path.to_s.classify
    name = "#{name}Component".classify
    class_name = "#{class_name}::#{name}"
    component_class = class_name.constantize

    render component_class.new(*args, **kwargs)
  end

  def atom(path)
    component "atoms/#{path}"
  end
end