class CreateSelectedArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :selected_articles do |t|
      t.references :admin, null: false, foreign_key: true
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
