module Health
  class App < Sinatra::Application
    get '/lift' do
      @lifts = Lift.all
      haml :'lift/index'
    end

    get '/lift/new' do
      @users = User.all
      @lift = Lift.new
      haml :'lift/new'
    end

    post '/lift/create' do
      @lift = Lift.new
      @lift.save
      redirect to "/u/#{@lift.id}"
    end

    get '/l/:id' do
      @lift = Lift.find(params[:id])
      haml :"lift/show"
    end
  end
end