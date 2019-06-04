    class Application
     
      def call(env)
        resp = Rack::Response.new
     
        if (Time.now.hour >=12 and Time.now.min>00)
          resp.write "Good Morning!"
        else
          resp.write "Good Afternoon!"
        end
     
        resp.finish
      end
     
    end