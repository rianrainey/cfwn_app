class AddFieldsToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :user_id, :integer
    add_column :entries, :workout_id, :integer
    add_column :entries, :body, :text
    add_column :entries, :time, :integer
    add_column :entries, :rounds, :integer
    add_column :entries, :repetitions, :integer
    add_column :entries, :date_performed, :timestamp
  end
end
