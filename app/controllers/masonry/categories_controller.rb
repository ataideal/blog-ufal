class Masonry::CategoriesController < MasonryController
    def show
        @category = Category.find(params[:id])
        @pubs = Pub.where(category: @category.id).page params[:page]
        @tags = ActsAsTaggableOn::Tag.most_used(10)
    end
end
