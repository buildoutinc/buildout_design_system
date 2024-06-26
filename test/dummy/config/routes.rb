Rails.application.routes.draw do
  mount BuildoutDesignSystem::Engine => "/buildout_design_system"
  mount Lookbook::Engine, at: "/lookbook"

  root to: 'pages#index'
end
