Rails.application.routes.draw do
  root 'flowers#index'
  resources :flowers do
    resources :arrangements
  end
    resources :arrangements 
  #   member do
  #     put 'add_flower'
  #   end
  end

#                  Prefix Verb   URI Pattern                                         Controller#Action
#                    root GET    /                                                   flowers#index
#  add_arrangement_flower PUT    /flowers/:id/add_arrangement(.:format)              flowers#add_arrangement
#     flower_arrangements GET    /flowers/:flower_id/arrangements(.:format)          arrangements#index
#                         POST   /flowers/:flower_id/arrangements(.:format)          arrangements#create
#  new_flower_arrangement GET    /flowers/:flower_id/arrangements/new(.:format)      arrangements#new
# edit_flower_arrangement GET    /flowers/:flower_id/arrangements/:id/edit(.:format) arrangements#edit
#      flower_arrangement GET    /flowers/:flower_id/arrangements/:id(.:format)      arrangements#show
#                         PATCH  /flowers/:flower_id/arrangements/:id(.:format)      arrangements#update
#                         PUT    /flowers/:flower_id/arrangements/:id(.:format)      arrangements#update
#                         DELETE /flowers/:flower_id/arrangements/:id(.:format)      arrangements#destroy
#                 flowers GET    /flowers(.:format)                                  flowers#index
#                         POST   /flowers(.:format)                                  flowers#create
#              new_flower GET    /flowers/new(.:format)                              flowers#new
#             edit_flower GET    /flowers/:id/edit(.:format)                         flowers#edit
#                  flower GET    /flowers/:id(.:format)                              flowers#show
#                         PATCH  /flowers/:id(.:format)                              flowers#update
#                         PUT    /flowers/:id(.:format)                              flowers#update
#                         DELETE /flowers/:id(.:format)                              flowers#destroy
