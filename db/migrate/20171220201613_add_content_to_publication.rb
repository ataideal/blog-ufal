class AddContentToPublication < ActiveRecord::Migration[5.1]
  def change
    add_column :publications, :content, :text
  end
end
