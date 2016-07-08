Rails.application.routes.draw do
  root 'flowers#index'
  resources :flowers
  resources :arrangements
end

#           Prefix Verb   URI Pattern                      Controller#Action
#             root GET    /                                arrangements#index
#          flowers GET    /flowers(.:format)               flowers#index
#                  POST   /flowers(.:format)               flowers#create
#       new_flower GET    /flowers/new(.:format)           flowers#new
#      edit_flower GET    /flowers/:id/edit(.:format)      flowers#edit
#           flower GET    /flowers/:id(.:format)           flowers#show
#                  PATCH  /flowers/:id(.:format)           flowers#update
#                  PUT    /flowers/:id(.:format)           flowers#update
#                  DELETE /flowers/:id(.:format)           flowers#destroy
#     arrangements GET    /arrangements(.:format)          arrangements#index
#                  POST   /arrangements(.:format)          arrangements#create
#  new_arrangement GET    /arrangements/new(.:format)      arrangements#new
# edit_arrangement GET    /arrangements/:id/edit(.:format) arrangements#edit
#      arrangement GET    /arrangements/:id(.:format)      arrangements#show
#                  PATCH  /arrangements/:id(.:format)      arrangements#update
#                  PUT    /arrangements/:id(.:format)      arrangements#update
#                  DELETE /arrangements/:id(.:format)      arrangements#destroy
