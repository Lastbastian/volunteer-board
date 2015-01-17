get '/session-viewer' do
  session.inspect
end

get '/' do

redirect '/login'
end

get '/user/:id' do # get the profile page
  @user = User.find(params[:id])
  @events = Event.find_by(user_id: params[:id])
  s1 = Event.where(city: [@user.city])
  @other_events = s1.where.not(user_id: params[:id]).order(date_of_event: :desc)

  erb :profile
end

get '/user/:user_id/event/new' do # get event NEW page
  @user = User.find(params[:user_id])

  erb :new
end

post '/user/:user_id/event' do # CREATE a new event
  # raise params.inspect
  user = User.find(params[:user_id])
  event = user.events.create(params[:event])

  redirect "/user/#{event.user_id}"
end

get '/user/:user_id/event/:id' do # SHOW personal event page
  @event = Event.find(params[:id])
  @user = User.find(params[:user_id])


  erb :event
end

get '/event/:id/edit' do # get event EDIT page
  @event = Event.find(params[:id])

  erb :edit
end

put '/event/:id' do # edit and update an event
  event = Event.find(params[:id])
  event.update(params[:event])

  redirect "/user/#{event.user_id}/event/#{event.id}"
end

delete '/event/:id' do # DELETE an event
  event = Event.find(params[:id])
  event.destroy

  redirect "/user/#{event.user_id}"
end

post '/events/results' do # post SEARCH results
  # raise params.inspect
  s1 = Event.where(tags: params[:event][:tags])
  @events = s1.where.not(user_id: session[:user_id]).order(date_of_event: :desc)

  erb :results
end

get '/event/:id' do # SHOW public event page
  @event = Event.find(params[:id])

  erb :event
end

put '/event/:id/volunteer' do #VOLUNTEER for an event
  # raise params.inspect
  user = User.find(session[:user_id])
  p user_params = "#{user.email} | #{user.username}"
  event = Event.find(params[:id])
  event.participants = user_params
  event.save

  redirect '/user/#{user.id}'
end