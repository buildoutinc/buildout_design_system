require 'view_component'

module BuildoutDesignSystem
  class Engine < ::Rails::Engine
    isolate_namespace BuildoutDesignSystem

    # config.to_prepare do
    #   # Make the implementing application's helpers available to the engine.
    #   # This is required for the overriding of engine views and helpers to work correctly.
    #   BuildoutDesignSystem::ComponentHelper Rails.application.helpers
    # end

    initializer 'buildout_design_system.action_controller' do |app|
      ActiveSupport.on_load :action_controller do
        helper BuildoutDesignSystem::ComponentHelper
      end
    end

  end
end
