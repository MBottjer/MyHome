class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :artist
      t.references :user, index: true

      t.timestamps
    end
  end
end
