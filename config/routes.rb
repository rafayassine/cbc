Rails.application.routes.draw do
  # scope "(:locale)", locale: /en|fr|zh-CN/ do
    root 'pages#index'
    get :presentation, to: 'pages#presentation'
    get :membres, to: 'pages#membres'
    get :presse, to: 'pages#presse'
    get :contact, to: 'pages#contact'
    post :send_mail, to: 'pages#send_mail'
  # end
end
