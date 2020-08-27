Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

  namepace :admin do
    resources :preferences, only: [:index, :update]
  end

end
