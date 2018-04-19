class CreateAcknowledgements < ActiveRecord::Migration[5.2]
  def change
    create_table :acknowledgements do |t|
      t.text :body, null: false
      t.references :answer, null: false
      t.references :user, null: false
      t.timestamps
    end
  end
end
