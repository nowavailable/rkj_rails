class CreateQuestionCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :question_categories do |t|
      t.string :label, null: false
      t.bool :is_active, null: false, default: true
      t.timestamps
    end
  end
end
