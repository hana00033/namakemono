Rails.application.routes.draw do
  devise_for :users
  get "lessons/index" => "lessons#index"
  get "lessons/about" => "lessons#about"
  get "lessons/graph" => "lessons#graph"
  get "lessons/credit" => "lessons#credit"
  get "lessons/monday" => "lessons#monday"
  get "lessons/thuesday" => "lessons#thuesday"
  get "lessons/wednesday" => "lessons#wednesday"
  get "lessons/thursday" =>"lessons#thursday"
  get "lessons/friday" => "lessons#friday"
  get "lessons/saturday" => "lessons#saturday"
  get '/lessons/:id/edit2', to: 'lessons#edit2', as: 'edit2_lesson'
  patch '/lessons/:id/plus', to: 'lessons#plus', as: 'plus_lesson'

  resources :lessons
  get 'home/index' => "home#index"
  
  authenticated :users do
    root :to => "lessons#index"
  end

  unauthenticated :users do
    root :to => "home#index"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


