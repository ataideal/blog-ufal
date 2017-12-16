class PubDetailController < SiteController
    def show
        @pub = Pub.find(params[:id])
        @tags = @pub.tag_list
    end
end
