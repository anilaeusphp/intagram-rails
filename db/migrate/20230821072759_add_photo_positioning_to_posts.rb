class AddPhotoPositioningToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :x_offsets, :float
    add_column :posts, :y_offsets, :float
    add_column :posts, :width, :float
    add_column :posts, :height, :float
  end
end
