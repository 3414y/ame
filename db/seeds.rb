# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"

def self.reset_pk_sequence(table_name)
    case ActiveRecord::Base.connection.adapter_name

    when 'SQLite'
        ActiveRecord::Base.connection.execute("delete from sqlite_sequence where
        name='#{table_name}'")

    when 'PostgreSQL'
        ActiveRecord::Base.connection.execute("select setval ('#{table_name}
        _id_seq', 1, false)")
    else
        raise "Task not implemented for this DB adapter"
    end
end

# Syokusyus
Syokusyu.delete_all
reset_pk_sequence("syokusyus")
CSV.foreach("db/syokusyus.csv",headers: true) do |row|
    Syokusyu.create(
        syokusyumei: row["syokusyumei"]
    )
end

Kyouka.delete_all
reset_pk_sequence("kyoukas")
CSV.foreach("db/kyoukas.csv",headers: true) do |row|
    @kyouka=Kyouka.create(
        namae: row["namae"],
        gakunen: row["gakunen"],
        senkou: row["senkou"],
        narabi: row["narabi"]
    )
end

Seiseki.delete_all
reset_pk_sequence("seisekis")

Tensu.delete_all
reset_pk_sequence("tensus")

User.delete_all
reset_pk_sequence("users")
CSV.foreach("db/users.csv",headers: true) do |row|
    @user=User.create(
        akaunto: row["akaunto"],
        pasuwado: row["pasuwado"],
        gakunen: row["gakunen"],
        kumi: row["kumi"],
        simei: row["simei"]
    )

    senkou = 0
    case @user.kumi
    when 1,2,3
      senkou = 1
    when 4
      senkou = 2
    end
    (1..3).each do |gakunen|
      (1..3).each do |gakki|
        seiseki = Seiseki.create(user_id: @user.id,gakunen:gakunen,gakki:gakki)
        Kyouka.where(gakunen:gakunen,senkou:senkou).each do |kyouka|
          Tensu.create(seiseki_id: seiseki.id,kyouka_id: kyouka.id,tokuten: 0)
        end
      end
    end
end

User.create!(simei: "先生",akaunto: "0",pasuwado: "000",kumi: "0",admin: true)


