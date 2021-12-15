class KaitousAddColumnKidoku < ActiveRecord::Migration[6.1]
  def change
    add_column :kaitous, :kidoku, :integer, default: 0
  end
end
