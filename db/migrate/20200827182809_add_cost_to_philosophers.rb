class AddCostToPhilosophers < ActiveRecord::Migration[6.0]
  def change
    add_column :philosophers, :cost, :string
  end
end
