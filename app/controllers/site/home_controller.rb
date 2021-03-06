class Site::HomeController < SiteController
  before_action :set_pub, only: [:show]

  def index
    if(params[:tag_list]) #tags with spaces must be written as ?tag_list="tag name" or ?tag_list=tag+name
      params[:tag_list].tr!("[]", "") #this line allows the use of brackets, like so: ?tag_list=["tag1"]
      params[:tag_list] = params[:tag_list].split(",") #this line allows the use of multiple tags, like so: ?tag_list=[tag1,"tag two"] or ?tag_list=tag1,tag+two
      @pubs = Pub.tagged_with(params[:tag_list], any: true).order(created_at: :desc).page params[:page]
    else
      @pubs = Pub.all.order(created_at: :desc).page params[:page]
    end
    @tags = ActsAsTaggableOn::Tag.most_used(10).map(&:name) #this map is used to avoid bugs on the html
                                                            #because the format of tags was inconsistent with pub_detail_controller
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
