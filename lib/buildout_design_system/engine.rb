# frozen_string_literal: true

module BuildoutDesignSystem
  class Engine < ::Rails::Engine
    initializer 'buildout_design_system.assets.precompile' do |app|
      %w[stylesheets].each do |sub|
        app.config.assets.paths << root.join('app', 'assets', sub).to_s
      end
    end
    initializer 'buildout_design_system.action_view' do
      ActiveSupport.on_load(:action_view) do
        include BuildoutDesignSystem::Helpers::Component
      end
    end
  end
end
