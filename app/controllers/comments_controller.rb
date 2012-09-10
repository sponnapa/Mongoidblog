class CommentsController < ApplicationController
    before_filter :authenticate_user!, :except => [:create, :new]
    def new
          @comment = Article.comment.new(:parent_id => params[:parent_id])
    end


    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create!(params[:comment])
        flash[:notice] = "Comment created!"

        respond_to do |format|
            format.html {redirect_to "/article"}
            format.js
        end
    end
    def destroy
        @article = Article.find(params[:article_id])
        logger.debug(@article)
        @article.comments.each do |comment|
            logger.debug(comment)
            @comment = comment if comment.id == params[:id]
        end
        @comment.destroy unless @comment.nil?
        respond_to do |format|
            format.html { redirect_to "/" }
            format.js
        end
    end
end
