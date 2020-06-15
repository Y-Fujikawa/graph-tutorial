# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'

  # Add route for OmniAuth callback
  match 'auth/:provider/callback', to: 'auth#callback', via: %i[get post]

  get 'auth/signout'

end
