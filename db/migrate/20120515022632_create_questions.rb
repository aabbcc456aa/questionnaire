class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :answer1
      t.string :answer2
      t.string :answer2_remark
      t.string :answer3_citynum
      t.string :answer3_phonenum
      t.string :answer3_extennum
      t.string :answer4_username
      t.string :answer4_service
      t.string :answer5
      t.string :answer5_remark6
      t.string :answer5_remark7
      t.timestamps
    end
  end
end
