class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
  end
  
  def new
    @question = Question.new(params[:question])
    @question.answer5 = params[:ids]  || ""
    return unless request.post?
    @question.answer2 = params[:answer2]
    puts @question.answer5
    unless @question.valid?
      render :action => :new
      return
    end
    
    if @question.save
      redirect_to :action => :index
    end
    
  end
end

