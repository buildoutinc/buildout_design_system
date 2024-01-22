require 'view_component'

module BuildoutDesignSystem
  class Engine < ::Rails::Engine
    isolate_namespace BuildoutDesignSystem

    config.to_prepare do
      ::ApplicationController.helper BuildoutDesignSystem::ApplicationHelper
    end
  end
end
