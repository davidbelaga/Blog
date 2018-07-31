class AddCommentIndexToArticle < ActiveRecord::Migration[5.2]
  def change
  	add_reference :articles, :comments, foreign_key: true
  end
end
