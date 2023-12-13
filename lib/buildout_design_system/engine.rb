module BuildoutDesignSystem
  class Engine < ::Rails::Engine
    initializer 'buildout_design_system.assets.precompile' do |app|
      %w[stylesheets].each do |sub|
        app.config.assets.paths << root.join('app', 'assets', sub).to_s
      end
    end
  end
end
