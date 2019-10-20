# frozen_string_literal: true

Rails.application.routes.draw do
  post  '/test_type',     to: 'test_type#create'
  get   '/test_type/:id', to: 'test_type#show'
  get   '/test_type',     to: 'test_type#index'
  patch '/test_type/:id', to: 'test_type#update'

  post  '/people_appearence',     to: 'people_appearance#create'
  get   '/people_appearence/:id', to: 'people_appearance#show'
  get   '/people_appearance',     to: 'people_appearance#index'
  patch '/people_appearance/:id', to: 'people_appearance#update'
end
