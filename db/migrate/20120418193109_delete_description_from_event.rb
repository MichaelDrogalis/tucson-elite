class DeleteDescriptionFromEvent < ActiveRecord::Migration
  def change
    remove_column :events, :description
  end
end
