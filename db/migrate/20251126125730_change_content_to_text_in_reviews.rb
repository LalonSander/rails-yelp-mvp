class ChangeContentToTextInReviews < ActiveRecord::Migration[7.1]
  def change
    change_column :reviews, :content, :text
  end
end
