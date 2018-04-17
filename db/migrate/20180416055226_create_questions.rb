class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :login, null: false
      t.references :joining_request, null: true
      t.string :nickname, null: false

      t.timestamps
    end
    add_index :users, [:email], unique:true
    add_index :users, [:login], unique:true

    create_table :user_specializeds do |t|
      t.references :user, null: false
      t.timestamps
    end

    create_table :questions do |t|
      t.references :user, null: false
      t.string :subject, null: false
      t.text :body, null: false
      t.timestamps
    end

    create_table :answers do |t|
      t.references :question, null: false
      t.integer :seq_num, null: false
      t.text :body, null: false
      t.string :anchor, null: false
      t.references :user, null: false
      t.references :user_specializeds
      t.timestamps
    end
    add_index :answers, [:question_id, :seq_num], unique:true

    create_table :joining_requests do |t|
      t.string :email, null: false
      t.string :token, null: false
      t.timestamp :token_expired_at, null: false
      t.timestamp :created_at, null: false
      t.timestamp :verified_at, null: true
    end
    add_index :joining_requests, [:token], unique:true

    create_table :change_email_requests do |t|
      t.references :user, null: false
      t.string :email, null: false
      t.string :token, null: false
      t.timestamp :token_expired_at, null: false
      t.timestamp :created_at, null: false
      t.timestamp :verified_at, null: true
    end
    add_index :change_email_requests, [:token], unique:true
  end
end
