class CreateVotings < ActiveRecord::Migration[5.2]
  def change
    create_table :votings do |t|
      t.references :answer, null: false
      t.references :user, null: false
      t.timestamps
    end

    create_table :notifications do |t|
      t.string :message_body, null: false
      t.integer :dst_user_id, null: false
      t.integer :src_event_id, null: false
      t.string :src_event_type, null: false
      t.integer :src_user_id
      t.boolean :is_read, null: false, default: false
      t.timestamps
    end
    add_index :notifications, [:dst_user_id, :src_event_id, :src_event_type], unique:true, name: "idx_notifications"

    create_table :notification_sends do |t|
      t.references :notification, null: false
      t.timestamp :sent_at
      t.timestamps
    end
  end
end
