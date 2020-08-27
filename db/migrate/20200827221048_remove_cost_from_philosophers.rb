class RemoveCostFromPhilosophers < ActiveRecord::Migration[6.0]
  def change
    remove_column :philosophers, :cost, :string
  end
end
