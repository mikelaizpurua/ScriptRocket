class AddWrittenByToLinks < ActiveRecord::Migration
  def change
    add_column :links, :written_by, :string
  end
end
