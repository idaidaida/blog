class EntriesController < ApplicationController

    def index
        @entries = Entry.all
    end


    def new
        @entry = Entry.new
    end

    def create
        @entry = Entry.new(create_params)
        @entry.createby_id = current_account.id

        if @entry.save
            flash[:info] = "新しいエントリーを登録しました"
            redirect_to entries_path
        else
            render "new"
        end
    end

    def show
        @entry = Entry.find(params[:id])
        @comments = @entry.comments.all
        @comment = @entry.comments.new

    end

    private
        def create_params
            params.require(:entry).permit(:title,:contents)
        end

    

end
