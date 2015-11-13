class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :city
      t.string :occupation
      t.date :birthdate
      t.references :user, index: true, foreign_key: true
      t.boolean :comedy
      t.boolean :adventure
      t.boolean :drama
      t.boolean :action
      t.boolean :thriller
      t.boolean :horror
      t.boolean :romantic_comedy
      t.boolean :musical
      t.boolean :documentary

      t.timestamps null: false
    end
  end
end
