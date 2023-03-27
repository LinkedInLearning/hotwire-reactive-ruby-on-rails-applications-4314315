Rails.application.routes.draw do
  get 'page1', to: 'application#page1'
  get 'page2', to: 'application#page2'
  post 'page3', to: 'application#page3'
  get 'page4', to: 'application#page4'

  get 'programming-languages', to: 'application#programming_languages'
  post 'programming-language', to: 'application#create_programming_language'
end
