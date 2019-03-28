Rails.application.routes.draw do
  root 'welcome#index'
  #get 'welcome/index',to:'welcome#index'
  #get 'welcome/about',to:'welcome#about'
  #get 'about/about'
  get 'about',to:'welcome#about'
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
