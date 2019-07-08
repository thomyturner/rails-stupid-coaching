class QuestionsController < ApplicationController

  def ask
  end

  def answer
    if params[:question][-1] == "?"
      @answer = "Silly question, get dressed and go to work!"
    elsif params[:question] == ""
      @answer = "got to work"
    elsif params[:question].downcase == "i am going to work"
      @answer = "Great Job.wow"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
