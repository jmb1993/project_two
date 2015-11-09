class ListsController < ApplicationController

    def index
      @lists = List.all
    end

    def show
    @list = List.find(params[:id])
    end

    def new
  @list = List.new

    end

    def create
  @list = List.new(list_params)

  @list.user_id = params[:user_id]


 @list.save


redirect_to user_path(@list.user)

    end

    def edit
  @list = List.find(params[:id])
    end

    def update
      @list = List.find(params[:id])
  if @list.update_attributes(list_params)
    redirect_to list_url(@list)
    flash.notice = "Your list has been updated"
  else
   render :edit
    end
    end

    def destroy
      @list = List.find(params[:id])
      @list.destroy
      redirect_to lists_path
    end
private
    def list_params
      params.require(:list).permit(:entry1, :entry2, :entry3)
    end
end
