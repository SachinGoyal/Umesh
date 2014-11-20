class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_code
      t.string :article_no
      t.string :jc
      t.string :price
      t.string :description

      t.timestamps
    end
  end
end
