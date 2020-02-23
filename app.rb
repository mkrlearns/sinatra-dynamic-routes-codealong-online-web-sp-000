require_relative 'config/environment'

class App < Sinatra::Base

  get('/hello') {"Hello World!"}
  get("/hello/:name") {@user_name = params[:name]; "Hello #{@user_name}!"}
  get("/goodbye/:name") {@user_name = params[:name]; "Goodbye, #{@user_name}."}

  get("/multiply/:num1/:num2")
    def p_to_i(i) params[i].to_i
    # @num1 = params[:num1].to_i
    # @num2 = params[:num2].to_i
    "#{p_to_i(:num1) * p_to_i(:num2)}"
  end

end
