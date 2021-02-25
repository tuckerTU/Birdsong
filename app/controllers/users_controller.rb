class UsersController < ApplicationController

  # GET: /users/new
  get "/signup" do
    erb :"/users/signup.html"
  end

  # POST: /users
  post "/signup" do
    user = User.create(params["user"])
    if user.valid?
      session["user_id"] = user.id
      redirect '/profile'
    else
      flash[:error] = user.errors.full_messages.first
      redirect '/signup'
    end
  end

    # GET: /users/5
  get "/profile" do
    erb :"/users/show.html"
  end

  get '/login' do
    if logged_in?
      redirect "user/#{current_user.slug}"
    else
      erb :'/users/login'
    end
  end

  post '/login' do
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect "/user/#{@user.slug}"
    else
      redirect '/login'
    end
  end

  get '/logout' do
    if logged_in?
      session.clear
      redirect '/login'
    else
      redirect '/login'
    end
  end

end
