class Site::HomeController < SiteController
  before_action :set_pub, only: [:show]

  def index
    @pubs = Pub.all
    @categories = Category.all
    @tags = ActsAsTaggableOn::Tag.most_used(10)
  end

  def show
    @tags = @pub.tag_list
  end


  private
  def set_pub
    @pub = Pub.find(params[:id])
  end
  def pub_params
    @pub = params.require(:pub).permit(:id)
  end


end
