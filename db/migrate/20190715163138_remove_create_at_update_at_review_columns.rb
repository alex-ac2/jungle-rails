class RemoveCreateAtUpdateAtReviewColumns < ActiveRecord::Migration
  def change
    remove_column :reviews, :createdat, :updatedat
  end
end
