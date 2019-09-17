Rails.application.routes.draw do
	root 'blog_posts#new'
  resources :blog_posts
  resources :blog_comments
  resources :comment_answers
  post 'submit_answer', to: 'comment_answers#submit_answer', as: 'submit_answer'
   # devise_for :users


devise_for :users,
           :controllers  => {
             :registrations => 'user/registrations',
          
           }


   # Rails.application.routes.draw do
   #    devise_for :users, controllers: {
   #      sessions: 'users/sessions'
   #    }
   #  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
