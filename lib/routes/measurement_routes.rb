module Health
  class App < Sinatra::Application
    get '/measurement' do
      @measurements = Measurement.all
      haml :'measurement/index'
    end

    get '/measurement/new' do
      @users = User.all
      @measurement = Measurement.new
      haml :'measurement/new'
    end

    post '/measurement/create' do
      @measurement = Measurement.new
      @measurement.save
      redirect to "/u/#{@measurement.id}"
    end

    get '/m/:id' do
      @measurement = Measurement.find(params[:id])
      haml :"measurement/show"
    end
  end
end