class ArticolesController<ApplicationController

	def new
		@gigel=Articole.new
	

	end

	def create
		@article=Articole.new(article_params)
		@article.save
		redirect_to articoles_show(@article)


		#render plain: params[:articole].inspect
	end

	private
	def article_params
		params.require(:articole).permit(:title, :description)

	end

end