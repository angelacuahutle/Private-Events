class AddUserReferenceToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :title, :string
    add_reference :events, :creator, null: false, foreign_key: true
  end
end
