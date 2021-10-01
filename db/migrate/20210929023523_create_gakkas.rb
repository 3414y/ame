class CreateGakkas < ActiveRecord::Migration[6.1]
  def change
    create_table :gakkas do |t|
      t.string :gakkamei

      t.timestamps
    end
  end
end
