class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :age
      t.string :bio
      t.string :image

      t.timestamps
    end
  end
end
