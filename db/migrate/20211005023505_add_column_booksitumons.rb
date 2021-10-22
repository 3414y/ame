class AddColumnBooksitumons < ActiveRecord::Migration[6.1]
  def change

    add_column :situmons, :kategori2, :integer
  end
end
