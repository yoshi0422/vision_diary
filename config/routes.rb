Rails.application.routes.draw do
  get 'visions/index'
  root to: "visions#index"
end
