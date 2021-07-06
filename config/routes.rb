Rails.application.routes.draw do
  root 'welcome#index'
  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users
  devise_for :vendors
  devise_for :shops
end
