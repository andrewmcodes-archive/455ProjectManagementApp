# frozen_string_literal: true

class CreateTenantsUsersJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :tenants, :users do |t|
      t.index %i[tenant_id user_id]
    end
  end
end
