class Site::SearchController < SiteController
  def pubs
    @pubs = Publication.search(params[:q]).page params[:page]
    @tags = ActsAsTaggableOn::Tag.most_used(10)
  end
end
