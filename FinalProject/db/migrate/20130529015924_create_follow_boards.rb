class CreateFollowBoards < ActiveRecord::Migration
  def change
    create_table :follow_boards do |t|
      t.integer :user_id
      t.integer :board_id

      t.timestamps
    end
  end
end
