class ListController < ApplicationController

    def index
      @lists = List.all
    end

    def show
    @list = List.find(params[:id])
    end

    def new
  @list = List.new
  @user = Users.all
    end

    def create
  @list = List.new list_params
  if @list.save
    redirect_to @list
  else
    render new_list_path
    end

    def edit
  @list = List.find(params[:id])
    end

    def update
      @list = List.find(params[:id])
  if @list.update_attributes(list_params)
    redirect_to list_url(@list)
    flash.notice = "List updated"
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
