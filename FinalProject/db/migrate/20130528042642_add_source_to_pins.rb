class AddSourceToPins < ActiveRecord::Migration
  def change
    add_column :pins, :source, :string
  end
end
