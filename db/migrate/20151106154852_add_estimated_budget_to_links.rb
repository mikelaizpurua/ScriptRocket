class AddEstimatedBudgetToLinks < ActiveRecord::Migration
  def change
    add_column :links, :estimated_budget, :string
  end
end
