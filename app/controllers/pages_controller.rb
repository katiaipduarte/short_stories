class PagesController < ApplicationController

   def topstories
      @stories = Story.best
   end

   def randomstories
      @stories = Story.random
   end
end
