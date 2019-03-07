class Application
 
  @@items = []
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path=="/items"
      if req.path.match(/items/)
 
      item_name = req.path.split("/items/").last #turn 
      item = @@items.find{|s| s.name == item_name}
 
      resp.write song.price
    end
    else
      resp.write "Route not found"
      resp.status = 404
    end
 
    if req.path.match(/items/)
 
      item_name = req.path.split("/items/").last #turn 
      item = @@items.find{|s| s.name == item_name}
 
      resp.write song.price
    end
 
    resp.finish
  end
end