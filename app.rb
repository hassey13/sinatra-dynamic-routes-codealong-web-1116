require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    "Hi!"
  end

  get '/goodbye' do
    "You are leaving?"
  end

  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye #{@user_name}!"
  end

  get '/multiply' do
    "Math!"
  end

  get "/multiply/:one/:two" do
    @product = params[:one].to_i * params[:two].to_i
    "The answer is #{@product}"
  end


end