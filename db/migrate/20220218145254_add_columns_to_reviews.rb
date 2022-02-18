class AddColumnsToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :content, :text
    add_column :reviews, :rating, :integer
    add_reference :reviews, :list, foreign_key: true
  end
end
