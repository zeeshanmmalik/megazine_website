class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :author
      t.string :title
      t.text :body, :limit => nil
      t.int :issue_id
      t.boolean :published, :null => false, :default => false

      t.timestamps
    end
  end
end
