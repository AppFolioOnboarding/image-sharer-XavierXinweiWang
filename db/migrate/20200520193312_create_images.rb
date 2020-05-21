class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :title, null: false, uniqueness: true
      t.text :url, null: false, uniqueness: true

      t.timestamps
    end
  end
end
