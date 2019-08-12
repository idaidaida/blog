class EntriesController < ApplicationController

    def index
        @entries = Entry.all
        @search = Entry.ransack(params[:q]) 
        @result = @search.result
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

    def edit
        @entry = Entry.find(params[:id])
    end

    def update
        @entry = Entry.find(params[:id])

        if @entry.update_attributes(create_params)
            flash[:info] = "新しいエントリーを更新しました"
            redirect_to entries_path
        else
            render "new"
        end
    end

    def destroy
        @entry = Entry.find(params[:id])
        @entry.destroy
        redirect_to entries_path
    end

    private
        def create_params
            params.require(:entry).permit(:title,:contents)
        end

    

end
