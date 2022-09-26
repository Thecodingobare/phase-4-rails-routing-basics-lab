class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        grades =Student.all.order(grade: :desc)
        render json: grades
    end

    def highestgrade
        highest_grade = Student.all.order(grade: :desc).limit(1)
        render json: highest_grade
    end
end
