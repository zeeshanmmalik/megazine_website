class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :title
      t.string :page_url
      t.string :status, :default => 'off'

      t.timestamps
    end
  end
end
