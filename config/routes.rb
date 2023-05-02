Rails.application.routes.draw do
  get '/books', to: 'books#index'
  get 'books/add', to: 'books#add'
  post '/books', to: 'books#create'
  get '/books/:id', to: 'books#show', as: 'book'
  get '/books/:id/edit', to: 'books#edit', as: 'edit_book'
  patch '/books/:id', to: 'books#update'
  delete '/books/:id', to: 'books#delete'
end
