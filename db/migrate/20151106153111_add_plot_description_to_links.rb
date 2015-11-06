class AddPlotDescriptionToLinks < ActiveRecord::Migration
  def change
    add_column :links, :plot_description, :text
  end
end
