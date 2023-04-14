# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :greetings
    end
  end

  root 'greetings#index'
  resources :greetings, only: [:index]
end
