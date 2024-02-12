class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @message = params[:question].capitalize
    @answer = "I don't care, get dressed and go to work!"
    if @message.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    elsif @message.include?("I am going to work")
      @answer = "Great!"
    end
  end
end

# <%# If the message is I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
# Otherwise the coach will answer I don't care, get dressed and go to work!
