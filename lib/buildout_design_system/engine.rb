require 'view_component'

module BuildoutDesignSystem
  class Engine < ::Rails::Engine
    isolate_namespace BuildoutDesignSystem

    config.to_prepare do
      ::ApplicationController.helper BuildoutDesignSystem::ApplicationHelper
    end

    initializer "buildout_design_system.assets.precompile" do |app|
      app.config.assets.precompile += %w(buildout_design_system/combo_box.js)
    end
  end
end
