class CreateKyoukas < ActiveRecord::Migration[6.1]
  def change
    create_table :kyoukas do |t|
      t.integer :gakunen
      t.integer :senkou
      t.string :namae
      t.integer :narabi

      t.timestamps
    end
  end
end
