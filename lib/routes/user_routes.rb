
module Health
  class App < Sinatra::Application
    get '/user' do
      @users = User.all
      haml :'user/index'
    end

    get '/user/new' do
      @user = User.new
      haml :'user/new'
    end

    post '/user/create' do
      @user = User.new
      @user.name = params[:name]
      @user.description = params[:details]
      @user.gender = params[:gender]
      @user.save
      redirect to "/u/#{@user.id}"
    end

    get '/u/:id' do
      @user = User.find(params[:id])
      haml :"user/show"
    end
  end
end