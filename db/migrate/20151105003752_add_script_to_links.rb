class AddScriptToLinks < ActiveRecord::Migration
  def change
    add_column :links, :script, :string
  end
end
