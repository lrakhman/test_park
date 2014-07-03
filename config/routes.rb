Rails.application.routes.draw do
  root 'emailapi#index'
  post 'emailapi/subscribe' => 'emailapi#subscribe'
end
