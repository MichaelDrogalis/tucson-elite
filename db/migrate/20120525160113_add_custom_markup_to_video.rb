class AddCustomMarkupToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :custom_markup, :string
  end
end
