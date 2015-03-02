class SubjectsController < ApplicationController
  
  layout "admin"

  def index
    @subjects = Subject.sorted
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new({name: "Default"})
    @subject_count = Subject.count
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      flash[:notice] = "Subject created successfully."
      redirect_to(action: 'index')
    else
      render('new')
    end
  end

  def edit
    @subject = Subject.find(params[:id])
    @subject_count = Subject.count
  end

  def update
    @subject = Subject.find(params[:id])
    if @subject.update_attributes(subject_params)
      flash[:notice] = "Subject updated  successfully."
      redirect_to(action: 'show', id: @subject.id)
    else
      @subject_count = Subject.count
      render('edit')
    end
  end

  def alert
    @id=params[:id]
  end
  # def delete
  #   @subject = Subject.find(params[:id])
  #   delete.js
  # end

  def destroy
    subject = Subject.find(params[:id]).destroy
    flash[:notice] = "Subject '#{subject.name}' successfully."
    redirect_to(action:'index')
  end

  private

      def subject_params
        params.require(:subject).permit(:name, :position, :visible, :created_at)
      end
    
end