class CreateKigyous < ActiveRecord::Migration[6.1]
  def change
    create_table :kigyous do |t|
      t.string :kigyoumei
      t.integer :syokusyu_id
      t.boolean :kennnai
      t.string :khp
      t.float :hyoutei

      t.timestamps
    end
  end
end
