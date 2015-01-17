get '/login' do

  erb :login
end

post '/login' do
  if blanks?
    flash[:error] = 'No blanks please'
    redirect '/login'
  end

  unless username_exists?
    flash[:error] = 'Invalid login info'
    redirect '/login'
  end

  @user = User.find_by(username: params[:username])

  unless @user.password == params[:password]
    flash[:error] = 'Invalid login info'
    redirect '/login'
  end

  session[:user_id] = @user.id # SUCCESS
  redirect "/user/#{@user.id}"
end

post '/signup' do
  if blanks?
    flash[:error] = 'No blanks please'
    redirect '/login'
  end

  if username_exists?
    flash[:error] = 'User name taken'
    redirect '/login'
  end

  @user = User.new(username: params[:username])
  @user.password = params[:password]
  @user.save!

  session[:user_id] = @user.id # SUCCESS
  redirect "/user/#{@user.id}"
end

def blanks?
  params[:username] == '' || params[:password] == ''
end

def username_exists?
  User.pluck(:username).include?(params[:username])
end

get '/logout' do
  session.delete(:user_id)

  redirect '/login'
end