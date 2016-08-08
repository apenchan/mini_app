Rails.application.routes.draw do
  devise_for :users
  root 'flowers#index'
  resources :flowers do
    resources :arrangements
  end
    resources :arrangements 
  #   member do
      # put 'arrangements/:arrangement_id/flower/:id/add' => 'arrangement#add_flower', as: 'add_flower'
  #   end
  end

#                   Prefix Verb   URI Pattern                                         Controller#Action
#         new_user_session GET    /users/sign_in(.:format)                            devise/sessions#new
#             user_session POST   /users/sign_in(.:format)                            devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                           devise/sessions#destroy
#            user_password POST   /users/password(.:format)                           devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)                       devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)                      devise/passwords#edit
#                          PATCH  /users/password(.:format)                           devise/passwords#update
#                          PUT    /users/password(.:format)                           devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                             devise/registrations#cancel
#        user_registration POST   /users(.:format)                                    devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)                            devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                               devise/registrations#edit
#                          PATCH  /users(.:format)                                    devise/registrations#update
#                          PUT    /users(.:format)                                    devise/registrations#update
#                          DELETE /users(.:format)                                    devise/registrations#destroy
#                     root GET    /                                                   flowers#index
#      flower_arrangements GET    /flowers/:flower_id/arrangements(.:format)          arrangements#index
#                          POST   /flowers/:flower_id/arrangements(.:format)          arrangements#create
#   new_flower_arrangement GET    /flowers/:flower_id/arrangements/new(.:format)      arrangements#new
#  edit_flower_arrangement GET    /flowers/:flower_id/arrangements/:id/edit(.:format) arrangements#edit
#       flower_arrangement GET    /flowers/:flower_id/arrangements/:id(.:format)      arrangements#show
#                          PATCH  /flowers/:flower_id/arrangements/:id(.:format)      arrangements#update
#                          PUT    /flowers/:flower_id/arrangements/:id(.:format)      arrangements#update
#                          DELETE /flowers/:flower_id/arrangements/:id(.:format)      arrangements#destroy
#                  flowers GET    /flowers(.:format)                                  flowers#index
#                          POST   /flowers(.:format)                                  flowers#create
#               new_flower GET    /flowers/new(.:format)                              flowers#new
#              edit_flower GET    /flowers/:id/edit(.:format)                         flowers#edit
#                   flower GET    /flowers/:id(.:format)                              flowers#show
#                          PATCH  /flowers/:id(.:format)                              flowers#update
#                          PUT    /flowers/:id(.:format)                              flowers#update
#                          DELETE /flowers/:id(.:format)                              flowers#destroy
#             arrangements GET    /arrangements(.:format)                             arrangements#index
#                          POST   /arrangements(.:format)                             arrangements#create
#          new_arrangement GET    /arrangements/new(.:format)                         arrangements#new
#         edit_arrangement GET    /arrangements/:id/edit(.:format)                    arrangements#edit
#              arrangement GET    /arrangements/:id(.:format)                         arrangements#show
#                          PATCH  /arrangements/:id(.:format)                         arrangements#update
#                          PUT    /arrangements/:id(.:format)                         arrangements#update
#                          DELETE /arrangements/:id(.:format)                         arrangements#destroy
