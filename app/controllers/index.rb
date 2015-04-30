get '/' do
  @urls = Url.all
  erb :index
end

post '/urls' do
  @url = Url.new(url: params[:url])
  unless @url.url.include?("http://")
    @url.update(url: "http://#{params[:url]}")
  end
  if @url.valid?
    @url.save
    redirect "/urls/#{@url.id}"
  else
    status 404
    erb :urls
  end
end

get '/urls/:id' do
  @url = Url.where(id: params[:id]).first

  erb :urls
end

get '/:shortened_url' do
  @url = Url.where(
    shortened_url: params[:shortened_url]).first
  # @url.update(count: )
  redirect @url.url
end