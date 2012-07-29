class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :imageable, :polymorphic => true

      t.timestamps
    end

    add_index :images, [:imageable_type, :imageable_id], :name => "image_owner_index"
  end
end
