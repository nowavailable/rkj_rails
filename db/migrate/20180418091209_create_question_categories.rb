class CreateQuestionCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :question_categories do |t|
      t.string :label, null: false
      t.boolean :is_active, null: false, default: true
      t.timestamps
    end

    add_column :questions, :question_category_id, :integer, null: false
  end
end
