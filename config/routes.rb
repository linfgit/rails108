Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'groups#index' #前面的groups是代表文件夹，index是文件的意思，是这样吗？
  resources :groups do #这个的意思是在http://localhost:3000/后新加一个路径吗？http://localhost:3000/groups ？
    member do         #现在在这里加member这个嵌套的时候不用运行
      post :join
      post :quit
    end
    resources :posts  #前面这里加resources :groups do
                                    #resources :posts
                                    #end
                      # 这个嵌套的时候要运行 rake routes
  end
  namespace :account do
    resources :groups
    resources :posts
  end
end
