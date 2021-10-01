class CreateKaitous < ActiveRecord::Migration[6.1]
  def change
    create_table :kaitous do |t|
      t.integer :user_id
      t.text :hentou
      t.integer :situmon_id
      t.datetime :nitiji

      t.timestamps
    end
  end
end
