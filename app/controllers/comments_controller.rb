class CommentsController < ApplicationController
    before_action :authenticate_user!, :only => [:new, :create]
    def create
        @article = Article.find(params[:article_id])
        @c = @article.comments.new(comment_params)
        @c.autor = current_user.username
        @c.save
    redirect_to article_path(@article)
    

    redirect_to article_path(@article)
    end

    private

    def comment_params
        params.require(:comment).permit(:autor, :username, :body)
    end
end
