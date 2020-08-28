class AddPriceToPhilosophers < ActiveRecord::Migration[6.0]
  def change
    add_column :philosophers, :price, :integer
  end
end
