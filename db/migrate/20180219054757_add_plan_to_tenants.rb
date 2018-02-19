class AddPlanToTenants < ActiveRecord::Migration[5.1]
  def change
    add_column :tenants, :plan, :string
  end
end
