class AddStatusToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :status, :integer, default: "draft"
  end
end
