class CreateInvites < ActiveRecord::Migration[5.0]
  def change
    create_table :invites do |t|
      t.integer :event_author_id, null: false
      t.integer :authored_event_id, null: false

      t.timestamps
    end
  end
end


