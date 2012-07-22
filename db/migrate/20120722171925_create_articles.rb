class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :author
      t.string :title
      t.text :body, :limit => 4294967295

      t.timestamps
    end
  end
end
