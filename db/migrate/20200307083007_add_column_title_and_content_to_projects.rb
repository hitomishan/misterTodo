class AddColumnTitleAndContentToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :title, :string
    add_column :projects, :content, :text
  end
end
