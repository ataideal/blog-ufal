class Site::Profile::PublicationsController < Site::ProfileController
  def new
    @publication = Publication.new
  end

  def create
    @publication = Pub.new(params_pub)
    @publication.user = current_user

    if @publication.save 
      redirect_to site_home_index_path, notice: "Publicação criada com sucesso!"
    else
      render :new
    end
  end

  private

  def params_pub
    params.require(:publication).permit(:id, :title, :description, :content, :category_id)
  end
end
