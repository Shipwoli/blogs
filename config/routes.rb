Rails.application.routes.draw do
  resources :blogs do
    member do
      patch 'like'
    end
  end
end
