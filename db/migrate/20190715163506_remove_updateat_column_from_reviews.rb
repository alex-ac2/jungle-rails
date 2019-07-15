class RemoveUpdateatColumnFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :updatedat
  end
end
