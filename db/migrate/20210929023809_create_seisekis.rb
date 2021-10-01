class CreateSeisekis < ActiveRecord::Migration[6.1]
  def change
    create_table :seisekis do |t|
      t.integer :user_id
      t.integer :gakunen
      t.integer :gakki
      t.integer :kyouka_id
      t.integer :tokuten
      t.integer :narabi
      t.integer :hyoutei

      t.timestamps
    end
  end
end
