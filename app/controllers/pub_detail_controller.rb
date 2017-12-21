class PubDetailController < SiteController
    def show
        @pub = Pub.find(params[:id])
        @tags = @pub.tag_list
        @recommended = @pub.find_related_tags.first(6)
    end
end
