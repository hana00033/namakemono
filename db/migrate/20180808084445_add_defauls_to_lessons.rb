class AddDefaulsToLessons < ActiveRecord::Migration[5.2]
  def change
  	change_column_default :lessons, :absence_count, 0
  end
end
