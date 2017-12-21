class Site::HomeController < SiteController
  before_action :set_pub, only: [:show]

  def index
    if(params[:tag_list]) #tags with spaces must be written as ?tag_list="tag name" or ?tag_list=tag+name
      params[:tag_list].tr!("[]", "") #this line allows the use of brackets, like so: ?tag_list=["tag1"]
      params[:tag_list] = params[:tag_list].split(",") #this line allows the use of multiple tags, like so: ?tag_list=[tag1,"tag two"] or ?tag_list=tag1,tag+two
      @pubs = Pub.tagged_with(params[:tag_list], any: true).page params[:page]
    else
      @pubs = Pub.all.page params[:page]
    end
    @tags = ActsAsTaggableOn::Tag.most_used(10).map(&:name)
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
