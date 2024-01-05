Rails.application.routes.draw do
  mount Styleguide::Engine => "/styleguide"
  mount Lookbook::Engine, at: "/lookbook"

  get "/style_test", to: "test#style_test"
end
