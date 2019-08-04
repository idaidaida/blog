class CommentsController < ApplicationController

    def create
        @entry = Entry.find(params[:entry_id])
        @comment = @entry.comments.new(create_params)
        @comment.commenter = current_account

        if @comment.save
            flash[:info] = "新しいコメントを登録しました"
            redirect_to entry_path(@entry)
        else
            redirect_to entry_path(@entry)
        end

    end

    private
        def create_params
            params.require(:comment).permit(:contents)
        end

end
