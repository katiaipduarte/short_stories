class PagesController < ApplicationController

   def topstories
      @stories = Story.best
   end

   def randomstories
      @stories = Story.random
   end

   def mystories
      @stories = Story.where(user_id: current_user)
      
   end
end
