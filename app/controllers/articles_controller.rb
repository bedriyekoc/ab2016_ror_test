class ArticlesController < ApplicationController
	
before_action:set_article,only:[:edit,:update,:show,:destroy]
   def new 
  @article=Article.new
	end
	def index
	@articles=Article.all 

	end
	def create 

			#@article=Article.new(params.require(:article).permit(:title,				:text))
		@article=Article.new(article_params)
	    if @article.save
			redirect_to @article
		else		
			render	'new'
		end
			#redirect_to articles_path(@article)
		#render plain:params[:article].inspect
	end
	def show
	end
	def edit
	end
	def destroy
		@article.delete
	end

	private   
	def
		article_params
		params.require(:article).permit(:title,:text)
	end
end
