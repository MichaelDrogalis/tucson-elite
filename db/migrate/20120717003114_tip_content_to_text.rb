class TipContentToText < ActiveRecord::Migration
  def change
    remove_column :tips, :content
    add_column :tips, :content, :text
  end
end
