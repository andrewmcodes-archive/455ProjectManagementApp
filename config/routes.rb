# frozen_string_literal: true

# == Route Map
#
#                   Prefix Verb      URI Pattern                                         Controller#Action
#            user_projects GET       /user_projects(.:format)                            user_projects#index
#                          POST      /user_projects(.:format)                            user_projects#create
#         new_user_project GET       /user_projects/new(.:format)                        user_projects#new
#        edit_user_project GET       /user_projects/:id/edit(.:format)                   user_projects#edit
#             user_project GET       /user_projects/:id(.:format)                        user_projects#show
#                          PATCH     /user_projects/:id(.:format)                        user_projects#update
#                          PUT       /user_projects/:id(.:format)                        user_projects#update
#                          DELETE    /user_projects/:id(.:format)                        user_projects#destroy
#                artifacts GET       /artifacts(.:format)                                artifacts#index
#                          POST      /artifacts(.:format)                                artifacts#create
#             new_artifact GET       /artifacts/new(.:format)                            artifacts#new
#            edit_artifact GET       /artifacts/:id/edit(.:format)                       artifacts#edit
#                 artifact GET       /artifacts/:id(.:format)                            artifacts#show
#                          PATCH     /artifacts/:id(.:format)                            artifacts#update
#                          PUT       /artifacts/:id(.:format)                            artifacts#update
#                          DELETE    /artifacts/:id(.:format)                            artifacts#destroy
#     users_tenant_project GET       /tenants/:tenant_id/projects/:id/users(.:format)    projects#users
#  add_user_tenant_project PUT       /tenants/:tenant_id/projects/:id/add_user(.:format) projects#add_user
#          tenant_projects GET       /tenants/:tenant_id/projects(.:format)              projects#index
#                          POST      /tenants/:tenant_id/projects(.:format)              projects#create
#       new_tenant_project GET       /tenants/:tenant_id/projects/new(.:format)          projects#new
#      edit_tenant_project GET       /tenants/:tenant_id/projects/:id/edit(.:format)     projects#edit
#           tenant_project GET       /tenants/:tenant_id/projects/:id(.:format)          projects#show
#                          PATCH     /tenants/:tenant_id/projects/:id(.:format)          projects#update
#                          PUT       /tenants/:tenant_id/projects/:id(.:format)          projects#update
#                          DELETE    /tenants/:tenant_id/projects/:id(.:format)          projects#destroy
#                  tenants GET       /tenants(.:format)                                  tenants#index
#                          POST      /tenants(.:format)                                  tenants#create
#               new_tenant GET       /tenants/new(.:format)                              tenants#new
#              edit_tenant GET       /tenants/:id/edit(.:format)                         tenants#edit
#                   tenant GET       /tenants/:id(.:format)                              tenants#show
#                          PATCH     /tenants/:id(.:format)                              tenants#update
#                          PUT       /tenants/:id(.:format)                              tenants#update
#                          DELETE    /tenants/:id(.:format)                              tenants#destroy
#                  members GET       /members(.:format)                                  members#index
#                          POST      /members(.:format)                                  members#create
#               new_member GET       /members/new(.:format)                              members#new
#              edit_member GET       /members/:id/edit(.:format)                         members#edit
#                   member GET       /members/:id(.:format)                              members#show
#                          PATCH     /members/:id(.:format)                              members#update
#                          PUT       /members/:id(.:format)                              members#update
#                          DELETE    /members/:id(.:format)                              members#destroy
#               home_index GET       /home/index(.:format)                               home#index
#                     root GET       /                                                   home#index
# update_user_confirmation PUT       /user/confirmation(.:format)                        confirmations#update
#         new_user_session GET       /users/sign_in(.:format)                            milia/sessions#new
#             user_session POST      /users/sign_in(.:format)                            milia/sessions#create
#     destroy_user_session DELETE    /users/sign_out(.:format)                           milia/sessions#destroy
#        new_user_password GET       /users/password/new(.:format)                       milia/passwords#new
#       edit_user_password GET       /users/password/edit(.:format)                      milia/passwords#edit
#            user_password PATCH     /users/password(.:format)                           milia/passwords#update
#                          PUT       /users/password(.:format)                           milia/passwords#update
#                          POST      /users/password(.:format)                           milia/passwords#create
# cancel_user_registration GET       /users/cancel(.:format)                             registrations#cancel
#    new_user_registration GET       /users/sign_up(.:format)                            registrations#new
#   edit_user_registration GET       /users/edit(.:format)                               registrations#edit
#        user_registration PATCH     /users(.:format)                                    registrations#update
#                          PUT       /users(.:format)                                    registrations#update
#                          DELETE    /users(.:format)                                    registrations#destroy
#                          POST      /users(.:format)                                    registrations#create
#    new_user_confirmation GET       /users/confirmation/new(.:format)                   confirmations#new
#        user_confirmation GET       /users/confirmation(.:format)                       confirmations#show
#                          POST      /users/confirmation(.:format)                       confirmations#create
#                edit_plan GET       /plan/edit(.:format)                                tenants#edit
#              update_plan PUT|PATCH /plan/update(.:format)                              tenants#update
#

Rails.application.routes.draw do
  resources :tasks
  resources :user_projects
  resources :artifacts
  resources :tenants do
    resources :projects do
      get 'users', on: :member
      put 'add_user', on: :member
    end
  end
  resources :members
  get 'home/index'

  root to: 'home#index'

  # *MUST* come *BEFORE* devise's definitions (below)
  as :user do
    match '/user/confirmation' => 'confirmations#update', :via => :put, :as => :update_user_confirmation
  end

  devise_for :users, controllers: {
    registrations: 'registrations',
    confirmations: 'confirmations',
    sessions: 'milia/sessions',
    passwords: 'milia/passwords'
  }

  match '/plan/edit' => 'tenants#edit', via: :get, as: :edit_plan
  match '/plan/update' => 'tenants#update', via: %i[put patch], as: :update_plan
end
