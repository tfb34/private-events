class CreateInvites < ActiveRecord::Migration[5.0]
  def change
    create_table :invites do |t|
      t.integer :event_author_id
      t.integer :authored_event_id

      t.timestamps
    end
  end
end


