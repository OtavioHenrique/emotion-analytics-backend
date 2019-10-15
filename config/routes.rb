# frozen_string_literal: true

Rails.application.routes.draw do
  post '/test_type', to: 'test_type#create'
  get '/test_type/:id', to: 'test_type#show'
  get '/test_type', to: 'test_type#index'
  patch '/test_type/:id', to: 'test_type#update'
end
