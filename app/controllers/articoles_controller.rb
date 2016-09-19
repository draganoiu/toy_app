class ArticolesController<ApplicationController

	def index
		@articles=Articole.all

	end


	def new
		@article=Articole.new
	

	end

	def edit
		@article=Articole.find(params[:id])

	end

	def create
		@article=Articole.new(article_params)
		
		
		if @article.save
			flash[:notice]= "Article was successfully created"
			redirect_to articole_path(@article)
		else
			render 'new'
		end
		
	
	end


	def update
		@article=Articole.find(params[:id])

		if @article.update(article_params)
			flash[:notice]="The article update was successfully saved"
			redirect_to articole_path(@article)

		else
			render 'edit'
		end



	end



     def show
     	@article=Articole.find(params[:id])

        end



	private
	def article_params
		params.require(:articole).permit(:title, :description)

	end

end