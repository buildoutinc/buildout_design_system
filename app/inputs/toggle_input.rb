class ToggleInput < SimpleForm::Inputs::Base
  def input(wrapper_options)
    merged_input_options = merge_wrapper_options(options.except(:as, :label), wrapper_options)
    template.render(
      html: ActionController::Base.renderer.render(BuildoutDesignSystem::Toggle.new(form_context: @builder, field_name: attribute_name, **merged_input_options))
    )
  end
end
