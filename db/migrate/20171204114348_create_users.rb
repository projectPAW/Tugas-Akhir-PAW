class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :noinduk
      t.string :nama
      t.string :jenkel
      t.string :kelas
      t.string :jurusan
      t.string :sekolah
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
