Rails.application.routes.draw do
  mount BuildoutDesignSystem::Engine => "/buildout_design_system"
  mount Lookbook::Engine, at: "/lookbook"

  get "/search/:name", as: :search_name, to: "search#search"
end
