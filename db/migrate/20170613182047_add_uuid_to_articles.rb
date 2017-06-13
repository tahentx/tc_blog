class AddUuidToArticles < ActiveRecord::Migration[5.1]
  def change
  	add_column :articles, :uuid, :string
  end
end
