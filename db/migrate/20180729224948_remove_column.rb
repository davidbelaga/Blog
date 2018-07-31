class RemoveColumn < ActiveRecord::Migration[5.2]
  def change
  	remove_column :articles, :comment
  	add_reference :comments, :article, foreign_key: true
  end
end
