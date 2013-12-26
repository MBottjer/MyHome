class LinksController < ApplicationController

  before_action :authenticate_user!

  def new 
    @link = Link.new
  end

  def edit
    @link = Link.find(params[:id])
  end

  def update
    @link = Link.find(params[:id])
   
    if @link.update(params[:link].permit(:name, :uri))
      redirect_to '/'
    else
      render 'edit'
    end
  end

  def create
    @link = Link.create(link_params)
    if @link.save
      redirect_to root_path
    else 
      render 'new'
    end
  end

  def show
    @link = Link.find(params[:id])
  end

  def index
    @links = Link.all
  end

  private
  def link_params
    params.require(:link).permit(:name, :uri)
  end

end
