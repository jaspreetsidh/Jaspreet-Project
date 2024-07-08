# class BooksController < ApplicationController
#   def show_all
#     if params[:search].present?
#       @books = Book.includes(:stories).where("title LIKE ?", "%#{params[:search]}%").page(params[:page]).per(10)
#       if @books.empty?
#         flash.now[:notice] = "Sorry, no results found."
#       end
#     else
#       @books = Book.includes(:stories).page(params[:page]).per(10)
#     end
#   end
#   def show
#     @book = Book.includes(:stories).find(params[:id])
#   end
# end

class BooksController < ApplicationController
  def show_all
    if params[:search].present?
      @books = Book.includes(:stories).where("title LIKE ?", "%#{params[:search]}%").paginate(page: params[:page], per_page: 10)
      if @books.empty?
        flash.now[:notice] = "Sorry, no results found."
      end
    else
      @books = Book.includes(:stories).paginate(page: params[:page], per_page: 10)
    end
  end

  def show
    @book = Book.includes(:stories).find(params[:id])
  end
end


