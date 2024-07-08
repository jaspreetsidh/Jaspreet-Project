class HomeController < ApplicationController
  def index
    if params[:search].present?
      @books_with_stories = Book.includes(:stories).where("books.title LIKE ?", "%#{params[:search]}%")
      @stories = Story.includes(:book).where("stories.title LIKE ?", "%#{params[:search]}%")
    else
      @books_with_stories = Book.includes(:stories).all
      @stories = Story.all
    end
    
    @books_with_stories = @books_with_stories.paginate(page: params[:page], per_page: 10)
  end
end
