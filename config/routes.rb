Rails.application.routes.draw do
  resources :products do
    collection do
      get 'category_children' 
      get 'category_grandchildren'
      get 'done'
      get ":id/category_children", to: 'products#category_children'
      get ":id/category_grandchildren", to: 'products#category_grandchildren'
    end
  end

end
