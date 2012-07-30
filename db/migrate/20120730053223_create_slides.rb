class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :title
      t.string :page_url
      t.boolean :published, :default => false, :null => false

      t.timestamps
    end
  end
end
