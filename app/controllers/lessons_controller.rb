class LessonsController < ApplicationController

#認証済みであることを確認
before_action :authenticate_user!
  
def index
  @lessons = current_user.lessons
end

def show
  @lesson = target_lesson params[:id]
end

def new
  @lesson = Lesson.new
end

def create
  @lesson = current_user.lessons.new lesson_params
  @lesson.save!
  redirect_to @lesson
end

def edit
  @lesson = target_lesson params[:id]
end

def update
  @lesson = target_lesson params[:id]
  @lesson.update(lesson_params)
  redirect_to @lesson
end

def destroy
  @lesson = target_lesson params[:id]
  @lesson.destroy
  redirect_to lessons_url
end

private
def target_lesson lesson_id
  current_user.lessons.where(id: lesson_id).take
end

def lesson_params
  params.require(:lesson).permit(:name, :description, :teacher_name, :credit, :grade, :term, :week, :period, :absence_count)
end

def about
  @lesson = target_lesson params[:id]
end

def graph

end

def credit

end

end
