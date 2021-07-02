class CreateArticleReadings < ActiveRecord::Migration[6.1]
  def change
    create_table :article_readings do |t|
      t.references :reading_list
      t.references :article

      t.timestamps
    end
  end
end
