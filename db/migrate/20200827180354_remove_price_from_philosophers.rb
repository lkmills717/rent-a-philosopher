class RemovePriceFromPhilosophers < ActiveRecord::Migration[6.0]
  def change
    remove_column :philosophers, :price, :integer
  end
end
