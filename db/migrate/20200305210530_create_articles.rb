class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.references :author
      t.string :title
      t.text :text
      t.references :category
      
      t.timestamps
    end

  end
end
