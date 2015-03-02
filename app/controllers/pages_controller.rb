class PagesController < ApplicationController
  
  layout "admin"
  
  def index
  	@pages = Page.all
  end

  def show
  	@page = Page.find(params[:id])
  end

  def new
  	@page = Page.new({name:''})
    @subjects = Subject.order('position ASC')
    @page_count = Page.count + 1
  end

  def create
  	@page = Page.new(page_params)
  	if @page.save
      flash[:notice] = "Page created successfully"
  	  redirect_to(action: 'index')
    else
      @subjects = Subject.order('position ASC')
      @page_count = Page.count
      render('new')
    end
  	#render plain: params[:page].inspect
  end

  def edit
    @page = Page.find(params[:id])
    @subjects = Subject.order('position ASC')
    @page_count = Page.count
  end

  def delete
  end

  private
  def page_params
  	params.require(:page).permit(:subject_id, :name, :permalink, :position, :visible)
  end
end
