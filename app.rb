require_relative 'config/environment'

class App < Sinatra::Base

  get('/hello') {"Hello World!"}
  get("/hello/:name") {@user_name = params[:name]; "Hello #{@user_name}!"}
  get("/goodbye/:name") {@user_name = params[:name]; "Goodbye, #{@user_name}."}

  get("/multiply/:num1/:num2") {"#{params[:num1].to_i * params[:num2].to_i}"}
    # @num1 = params[:num1].to_i
    # @num2 = params[:num2].to_i
    "#{params[:num1].to_i * params[:num2].to_i}"


end
