class AddWorthToPhilosophers < ActiveRecord::Migration[6.0]
  def change
    add_column :philosophers, :worth, :integer
  end
end
