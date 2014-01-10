class LinksController < ApplicationController

  before_action :authenticate_user!

  def new 
    @user = current_user
    @link = Link.new
  end

  def edit
    @link = current_user.links.find(params[:id])
  end

  def update
    @link = current_user.links.find(params[:id])
   
    if @link.update(params[:link].permit(:name, :uri))
      redirect_to '/'
    else
      render 'edit'
    end
  end

  def create
    @user = current_user
    @link = @user.links.create(link_params)
    if @link.save
      redirect_to root_path
    else 
      render 'new'
    end
  end

  def destroy
    @user = current_user
    @link = @user.links.find(params[:id])
    @link.destroy

    redirect_to '/'
  end

  def show
    @link = Link.find(params[:id])
  end

  def index
    @links = current_user.links
  end

  private
  def link_params
    params.require(:link).permit(:name, :uri)
  end

end
