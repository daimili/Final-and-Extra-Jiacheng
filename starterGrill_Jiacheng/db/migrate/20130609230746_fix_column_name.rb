class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :Reservation, :Date, :DateTime
  end
end
