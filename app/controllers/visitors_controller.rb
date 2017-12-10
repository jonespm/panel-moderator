class VisitorsController < ApplicationController
    def index
        @question = Question.new
    end

    def create
        @question = Question.new(params[question_params])
        #TODO: Error handling
        @question.save
        redirect_to root_path
        
    end
    
    def question_params
        params.require(:question).permit!
    end
end
