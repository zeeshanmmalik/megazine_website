class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :title
      t.string :description
      t.boolean :published, :null => false, :default => false
      t.string :price, :null => false, :default => "5.00"
      t.string :currency_code, :null => false, :default => "GBP"

      t.timestamps
    end
  end
end
