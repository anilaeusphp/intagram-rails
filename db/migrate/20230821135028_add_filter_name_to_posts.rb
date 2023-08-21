class AddFilterNameToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :filter_name, :string
  end
end
