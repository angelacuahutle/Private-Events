class CreateInvitations < ActiveRecord::Migration[6.1]
  def change
    create_table :invitations do |t|
      t.datetime :date
      t.belongs_to :user
      t.belongs_to :event
      t.timestamps
    end
  end
end
