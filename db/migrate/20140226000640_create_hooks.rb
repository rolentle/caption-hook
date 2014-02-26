class CreateHooks < ActiveRecord::Migration
  def change
    create_table :hooks do |t|
      t.string :url

      t.timestamps
    end
  end
end
