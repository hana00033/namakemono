class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      # userモデルのuser_idに結びつけるため、必要
      t.integer :user_id, null: true
      #授業名
      t.string :name, null: true
      # 説明
      t.text :description, null: true
      # 教授名
      t.string :teacher_name, null: true
      # 単位
      t.integer :credit, null: true
      # 学年
      t.integer :grade, null: true
      # 学期
      t.integer :term, null: true
      #曜日
      t.integer :week, null: true
      #何限か
      t.integer :period, null: true
      #欠席数
      t.float :absence_count, null: true

      t.timestamps
    end
  end
end
