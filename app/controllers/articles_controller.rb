class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :report, :update, :destroy]
  before_filter :authenticate_user!, only: [ :show,:new, :edit, :update, :destroy ]
  before_filter :require_permission, only: [ :edit, :update, :destroy ]
  
  def require_permission
	if  current_user.admin == false
		if current_user != Article.find(params[:id]).user
			flash[:alert] = "Action interdite. L\'offre peut seulement être édité/supprimé par son auteur"
			redirect_to articles_url
		end
	end
  end

  # GET /articles
  # GET /articles.json
  def index
    #beforepaginate @articles = Article.all
    @articles = Article.order('created_at DESC').paginate(:page => params[:page], :per_page => 8)
	
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
	@auteur = Article.find(params[:id]).user
	@pas_lauteur = true
        if @auteur == current_user
		@pas_lauteur = false
	end
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
	 
  end


  def report
	user = current_user
	nomarticle = @article.title
	auteur = User.find(@article.user_id)
	flash[:alert] = "Merci du signalement."
	redirect_to root_url
	UserMailer.report_email(user,nomarticle,auteur).deliver_now
  end

  # POST /articles
  # POST /articles.json
  def create
    	@article = Article.new(article_params)
    	@article.user = current_user
    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :body, :price, :image1,:image1_cache,:image2,:image2_cache,:image3,:image3_cache,:image4,:image4_cache,:remove_image1,:remove_image2,:remove_image3,:remove_image4)
    end
end
