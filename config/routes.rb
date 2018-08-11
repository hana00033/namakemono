Rails.application.routes.draw do
  devise_for :users
  get "lessons/index" => "lessons#index"
  get "lessons/about" => "lessons#about"
  get "lessons/graph" => "lessons#graph"
  get "lessons/credit" => "lessons#credit"
  resources :lessons
  get 'home/index' => "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
