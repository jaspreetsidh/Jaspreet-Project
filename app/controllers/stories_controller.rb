# class StoriesController < ApplicationController
#   def show_all
#     if params[:search].present?
#       @stories = Story.where("title LIKE ?", "%#{params[:search]}%").page(params[:page]).per(20)
#       if @stories.empty?
#         flash.now[:notice] = "Sorry, no results found."
#       end
#     else
#       @stories = Story.page(params[:page]).per(20)
#     end
#   end
#   def show
#     @story = Story.find(params[:id])
#   end
# end

class StoriesController < ApplicationController
  def show_all
    if params[:search].present?
      @stories = Story.where("title LIKE ?", "%#{params[:search]}%").paginate(page: params[:page], per_page: 20)
      if @stories.empty?
        flash.now[:notice] = "Sorry, no results found."
      end
    else
      @stories = Story.paginate(page: params[:page], per_page: 20)
    end
  end

  def show
    @story = Story.find(params[:id])
  end
end
