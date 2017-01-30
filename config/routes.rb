Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'groups#index' #前面的groups是代表文件夹，index是文件的意思，是这样吗？
  resources :groups   #这个的意思是在http://localhost:3000/后新加一个路径吗？http://localhost:3000/groups ？
end
