class CreateChessSoldiers < ActiveRecord::Migration[7.0]
  def change
    create_table :chess_soldiers do |t|
      t.string :rank
      t.string :color
      t.integer :soldier_state

      t.timestamps
    end
  end
end
