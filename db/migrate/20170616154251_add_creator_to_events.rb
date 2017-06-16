class AddCreatorToEvents < ActiveRecord::Migration[5.0]
  def change
    add_reference :events, :creator, foreign_key: true
  end
end
