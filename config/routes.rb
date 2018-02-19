# == Route Map
#
#                   Prefix Verb   URI Pattern                       Controller#Action
#                  members GET    /members(.:format)                members#index
#                          POST   /members(.:format)                members#create
#               new_member GET    /members/new(.:format)            members#new
#              edit_member GET    /members/:id/edit(.:format)       members#edit
#                   member GET    /members/:id(.:format)            members#show
#                          PATCH  /members/:id(.:format)            members#update
#                          PUT    /members/:id(.:format)            members#update
#                          DELETE /members/:id(.:format)            members#destroy
#               home_index GET    /home/index(.:format)             home#index
#                     root GET    /                                 home#index
# update_user_confirmation PUT    /user/confirmation(.:format)      milia/confirmations#update
#         new_user_session GET    /users/sign_in(.:format)          milia/sessions#new
#             user_session POST   /users/sign_in(.:format)          milia/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)         milia/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)     milia/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)    milia/passwords#edit
#            user_password PATCH  /users/password(.:format)         milia/passwords#update
#                          PUT    /users/password(.:format)         milia/passwords#update
#                          POST   /users/password(.:format)         milia/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)           milia/registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)          milia/registrations#new
#   edit_user_registration GET    /users/edit(.:format)             milia/registrations#edit
#        user_registration PATCH  /users(.:format)                  milia/registrations#update
#                          PUT    /users(.:format)                  milia/registrations#update
#                          DELETE /users(.:format)                  milia/registrations#destroy
#                          POST   /users(.:format)                  milia/registrations#create
#    new_user_confirmation GET    /users/confirmation/new(.:format) confirmations#new
#        user_confirmation GET    /users/confirmation(.:format)     confirmations#show
#                          POST   /users/confirmation(.:format)     confirmations#create
#                          GET    /                                 home#index
# 

Rails.application.routes.draw do
  resources :members
  get 'home/index'

   root :to => "home#index"

    
  # *MUST* come *BEFORE* devise's definitions (below)
  as :user do   
    match '/user/confirmation' => 'milia/confirmations#update', :via => :put, :as => :update_user_confirmation
  end

  devise_for :users, :controllers => { 
    :registrations => "milia/registrations",
    :confirmations => "confirmations",
    :sessions => "milia/sessions", 
    :passwords => "milia/passwords", 
  }


  root to: 'home#index'
end
