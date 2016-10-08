class ArticolesController<ApplicationController
	before_action :set_article, only: [:edit, :update, :show, :destroy]

	def index
		@articles=Articole.all

	end


	def new
		@article=Articole.new
	

	end

	def edit		
	end


	def create
		debugger
		@article=Articole.new(article_params)
		@article.user=User.first
		
		if @article.save
			flash[:success]= "Article was successfully created"
			redirect_to articole_path(@article)
		else
			render 'new'
		end
		
	
	end


	def update
		
		if @article.update(article_params)
			flash[:success]="The article update was successfully saved"
			redirect_to articole_path(@article)

		else
			render 'edit'
		end



	end



     def show     	
        end


      def destroy      	
      	@article.destroy
      	flash[:danger]="The article was deleted"

      	redirect_to articoles_path

      end


	private

	def	set_article
		@article=Articole.find(params[:id])

		end

	def article_params
		params.require(:articole).permit(:title, :description)

	end

end