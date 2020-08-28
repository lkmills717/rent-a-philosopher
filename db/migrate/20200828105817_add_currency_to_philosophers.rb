class AddCurrencyToPhilosophers < ActiveRecord::Migration[6.0]
  def change
    add_column :philosophers, :currency, :string
  end
end
