class CreateNovels < ActiveRecord::Migration
  def change
    create_table :novels do |t|
      t.string :name
      t.text :title

      t.timestamps null: false
    end
  end
end
