class PagesController < ApplicationController

  def home
    @title = "Strona główna"
    if signed_in?
      @micropost = Micropost.new
      @feed_items = current_user.feed.paginate(:page => params[:page])
    end
  end

  def contact
    @title = "Kontakt"
  end
  
  def about
    @title = "O stronie"
  end
  
  def help
    @title = "Pomoc"
  end
end
