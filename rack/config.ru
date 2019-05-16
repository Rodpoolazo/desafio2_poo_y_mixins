# se crea un app
require 'rack'

class MiPrimeraWebApp

  def call(env)
    @url = env['REQUEST_PATH']
    if @url == '/index'
    [200, {'Content-Type' => 'text/html'}, ["Estas en el Index"]]
    elsif @url == '/otro'
    [200, {'Content-Type' => 'text/html'}, ["Estas en otro landing!"]]
    else
    [404, {'Content-Type' => 'text/html'}, [File.read("404.html")]]
    end
  end
end

run MiPrimeraWebApp.new
