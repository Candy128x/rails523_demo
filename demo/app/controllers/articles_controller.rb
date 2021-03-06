class ArticlesController < ApplicationController

    http_basic_authenticate_with name: "ashish", password: "qwerty", except: [:index, :show]  

    def index
        # @articles = Article.all
        # @articles = Article.order(:id).page(params[:page])
        if params[:search]
            @articles = Article.search(params[:search]).order("created_at DESC").page(params[:page])
        else
            @articles = Article.all.order('created_at DESC').page(params[:page])
        end
    end

    def show
        @article = Article.find(params[:id])
    end

    def new
        @article = Article.new
    end

    def edit
        # user = User.find_by_email(params[:email])
        # if user && user.authenticate(params[:password])
            @article = Article.find(params[:id])          
            # session[:user_id] = user.id
            # redirect_to '/'
        # else
            # redirect_to '/login'
        # end
    end

    def create
        # render plain: params[:article].inspect

        @article = Article.new(article_params)

        if @article.save
            redirect_to @article
        else
            render 'new'
        end
    end

    def update
        @article = Article.find(params[:id])
        if @article.update(article_params)
            redirect_to @article
        else
            render 'edit'
        end
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy

        redirect_to articles_path
    end

    private
        def article_params
            params.require(:article).permit(:title, :text)
        end
end
