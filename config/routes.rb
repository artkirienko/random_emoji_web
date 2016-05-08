Rails.application.routes.draw do
  get 'list', to: 'welcome#index', as: 'full_list'
  root to: 'welcome#random'
end
