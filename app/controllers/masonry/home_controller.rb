class Masonry::HomeController < MasonryController
  def index
    @pubs = Pub.all.order('id').page params[:page]
    @classes = ["","grid-item--width2 grid-item--height2","grid-item--height3","grid-item--height2",
                "grid-item--width3","","","grid-item--height2","grid-item--width2 grid-item--height3","",
                "grid-item--height2","", "grid-item--width2 grid-item--height2","grid-item--width2","",
                "grid-item--height2","","","grid-item--height3","grid-item--height2","","","grid-item--height2",
                "grid-item--width2 grid-item--height2",""]
  end
end
