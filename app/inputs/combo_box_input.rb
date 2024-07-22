class ComboBoxInput < SimpleForm::Inputs::Base
  def input(wrapper_options)
    modified_options = options.except(:as).tap do |option_hash|
      option_hash[:prompt] ||= nil
      option_hash[:label] = false
    end

    # we cannot render this inline, we need to pass everything into a partial since rendering
    # BuildoutDesignSystem::ComboBox.new do
    #  builder.input attribute_name, collection: collection
    # will not render the block

    template.render(html: ActionController::Base.renderer.render(
      partial: "combo_box/index",
      locals: {
        builder: @builder,
        attribute_name: attribute_name,
        options: modified_options
      }
    ))
  end
end
