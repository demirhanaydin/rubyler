class AddTitleInUrlToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :title_in_url, :string
  end

  def self.down
    remove_column :posts, :title_in_url, :string
  end
end
