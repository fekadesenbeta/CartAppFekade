class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.references :cart, foreign_key: true
      t.boolean :important

      t.timestamps
    end
  end
end
