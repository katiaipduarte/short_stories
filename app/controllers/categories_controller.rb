class CategoriesController < ApplicationController

   def show
      @stories = Story.where(category_id: params[:id]).order(id: :desc).page(params[:page]).per(5)
   end
end
