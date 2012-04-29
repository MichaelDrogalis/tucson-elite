class AddPostReferenceToPostComments < ActiveRecord::Migration
  def change
    change_table :post_comments do |t|
      t.references :post
    end
  end
end
