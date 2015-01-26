get '/' do
  @aunty = params[:aunty]
  # Look in app/views/index.erb
  erb :index
end

post '/aunty' "" do
  speech = params[:user_input]
  if speech == ""
    aunty_reply = "Are you just moving your mouth?"
  elsif speech == speech.upcase
    aunty_reply = "I bet it's that girl sitting next to you huh. Tsk tsk."
  else
    aunty_reply = "SHOUT KIDDO!"
  end
  redirect to("/?aunty=#{aunty_reply}")
end

