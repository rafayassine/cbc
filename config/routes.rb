Rails.application.routes.draw do
  root 'pages#index'
  get :presentation, to: 'pages#presentation'
  get :membres, to: 'pages#membres'
end
