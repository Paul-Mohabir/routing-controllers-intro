Rails.application.routes.draw do
  get '/' => 'pages#welcome'
  get '/welcome' => 'pages#welcome'

  get '/about'=> 'pages#about'
  get '/welcome/about' => 'pages#about'

  get '/welcome/contest' => 'pages#contest'
  get '/contest' => 'pages#contest'

  get '/kitten/:size/:size' => 'pages#kitten'
  get '/kittens/:size/:size' => 'pages#kittens'

  get '/secrets/:magic_word' => 'pages#secrets'
end
