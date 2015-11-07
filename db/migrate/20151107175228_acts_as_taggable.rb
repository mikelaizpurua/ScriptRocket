class ActsAsTaggable < ActiveRecord::Migration
  def change
    add_column :links, :tag_list => []
  end
end
