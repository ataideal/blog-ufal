class Masonry::HomeController < MasonryController
  def index
    @pubs = Pub.all.page params[:page]
    @left = [0, 319, 639]
    @top = [0, 526, 1053]
  end
end
