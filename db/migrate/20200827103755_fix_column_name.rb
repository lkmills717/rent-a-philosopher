class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookings, :date, :start_date
  end
end