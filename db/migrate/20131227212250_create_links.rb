class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :name
      t.text :uri
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
