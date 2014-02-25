class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :app
      t.string :user
      t.string :url
      t.string :head
      t.string :head_long
      t.text :git_log

      t.timestamps
    end
  end
end
