Rails.application.routes.draw do
  get 'page1', to: 'application#page1'
  get 'page2', to: 'application#page2'
  post 'page3', to: 'application#page3'
end
