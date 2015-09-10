class Randomize
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, body = @app.call(env)
	html = body.first + "number #{rand(100)}"
	[status, headers, [html]]
  end  
end