class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :mod
      t.string :username
      t.string :password_digest
      t.string :img_url
      t.timestamps
    end
  end
end
