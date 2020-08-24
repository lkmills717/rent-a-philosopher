class CreatePhilosophers < ActiveRecord::Migration[6.0]
  def change
    create_table :philosophers do |t|
      t.string :name
      t.string :quote
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
