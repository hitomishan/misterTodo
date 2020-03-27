class AddTaskRefToAsigns < ActiveRecord::Migration[6.0]
  def change
    add_reference :asigns, :task, null: false, foreign_key: true
  end
end
