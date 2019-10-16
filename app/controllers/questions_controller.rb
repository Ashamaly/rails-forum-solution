class QuestionsController < ApplicationController

    def index
        redirect_to root_path
    end
    
    def show
        @question = Question.find(params[:id])

        @answers = @question.answers.order(created_at: :desc)
    end

    def create
        redirect_to Question.create(question_params)
    end

    def new
        render plain: ""
    end

    def edit
        render plain: ""
    end



    private
    def question_params
        params.require(:question).permit(:email, :body)
    end
end
