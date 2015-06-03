class AddCategoryAndAuthorIdToBooks < ActiveRecord::Migration
  def change
    add_column :books, :category_id, :int
    add_column :books, :author_id, :int
  end
end
