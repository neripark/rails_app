class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    text = 'Hello World!!!!!'
    text2 = params
    render plain: "parameter: #{text2}"
  end
end
