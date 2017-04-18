class AddDefaultToTasks < ActiveRecord::Migration[5.0]
  def change
    change_column_default :tasks, :done, from: true, to: false
  end
end
