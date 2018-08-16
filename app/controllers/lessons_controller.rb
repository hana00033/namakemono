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

def about
  @lesson = target_lesson params[:id]
end

def graph
  @lesson = target_lesson params[:id]
end

def credit
  @amount = 0
  @lessons = current_user.lessons

  @lessons.each do |lesson|
    @amount += lesson.credit.to_i
  end

  @am = current_user.amount_credit.to_i
  gon.data1 = [@amount , @am - @amount]

end

def monday
  @lessons = current_user.lessons.where(week: 0)
  gon.absence1 = []
  gon.name1 = []

  if @lessons
    @lessons.each do |lesson|
      gon.absence1 = gon.absence1.push(lesson.absence_count)
      gon.name1 = gon.name1.push(lesson.name)
    end
    @a = gon.name1
    @b = gon.absence_count1
  end
end


def thuesday
  @lessons = current_user.lessons.where(week: 1)
  gon.absence2 = []
  gon.name2 = []

  if @lessons
    @lessons.each do |lesson|
      gon.absence2 = gon.absence2.push(lesson.absence_count)
      gon.name2 = gon.name2.push(lesson.name)
    end
    @a = gon.name2
    @b = gon.absence_count2
  end
end

def wednesday
  @lessons = current_user.lessons.where(week: 2)
  gon.absence3 = []
  gon.name3 = []

  if @lessons
    @lessons.each do |lesson|
      gon.absence3 = gon.absence3.push(lesson.absence_count)
      gon.name3 = gon.name3.push(lesson.name)
    end
    @a = gon.name3
    @b = gon.absence_count3
  end
end

def thursday
  @lessons = current_user.lessons.where(week: 3)
  gon.absence4 = []
  gon.name4 = []

  if @lessons
    @lessons.each do |lesson|
      gon.absence4 = gon.absence4.push(lesson.absence_count)
      gon.name4 = gon.name4.push(lesson.name)
    end
    @a = gon.name4
    @b = gon.absence_count4
  end
end

def friday
  @lessons = current_user.lessons.where(week: 4)
  gon.absence5 = []
  gon.name5 = []

  if @lessons
    @lessons.each do |lesson|
      gon.absence5 = gon.absence5.push(lesson.absence_count)
      gon.name5 = gon.name5.push(lesson.name)
    end
    @a = gon.name5
    @b = gon.absence_count5
  end
end

def saturday
  @lessons = current_user.lessons.where(week: 5)
  gon.absence6 = []
  gon.name6 = []

  if @lessons
    @lessons.each do |lesson|
      gon.absence6 = gon.absence6.push(lesson.absence_count)
      gon.name6 = gon.name6.push(lesson.name)
    end
    @a = gon.name6
    @b = gon.absence_count6
  end
end

def edit2 
  @lesson = target_lesson params[:id]
  # @lesson = Lesson.find(params[:id])
end

def plus
  @lesson = target_lesson params[:id]

  @lesson.absence_count = 5.0;
  @lesson.update(lesson_params)
  redirect_to edit2_lesson_path
end


private
def target_lesson lesson_id
  current_user.lessons.where(id: lesson_id).take
end

def lesson_params
  params.require(:lesson).permit(:name, :description, :teacher_name, :credit, :grade, :term, :week, :period, :absence_count)
end

end
