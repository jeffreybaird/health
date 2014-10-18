module Health
  class App < Sinatra::Application
    get '/exercise' do
      @exercises = Exercise.all
      haml :'exercise/index'
    end

    get '/exercise/new' do
      @exercise = Exercise.new
      haml :'exercise/new'
    end

    post '/exercise/create' do
      @exercise = Exercise.new
      @exercise.save
      redirect to "/u/#{@exercise.id}"
    end

    get '/e/:id' do
      @exercise = Exercise.find(params[:id])
      haml :"exercise/show"
    end
  end
end