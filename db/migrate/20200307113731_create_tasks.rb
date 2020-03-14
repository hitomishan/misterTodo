class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.integer :status
      t.integer :user_id
      t.integer :project_id
      t.string :title
      t.text :content
      t.date :deadline
      t.boolean :label

      t.timestamps
    end
  end
end
