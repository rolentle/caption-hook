class AddParametersToHooks < ActiveRecord::Migration
  def change
    add_column :hooks, :app, :boolean
    add_column :hooks, :user, :boolean
    add_column :hooks, :post_url, :boolean
    add_column :hooks, :head, :boolean
    add_column :hooks, :head_long, :boolean
    add_column :hooks, :git_log, :boolean
  end
end
