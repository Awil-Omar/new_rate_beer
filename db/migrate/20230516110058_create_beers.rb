class CreateBeers < ActiveRecord::Migration[7.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :style
      t.references :brewery_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
