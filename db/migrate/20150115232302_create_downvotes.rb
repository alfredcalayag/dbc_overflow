class CreateDownvotes < ActiveRecord::Migration
  def change
    create_table :downvotes do |t|
      t.belongs_to :question, index: true
      t.belongs_to :user, index: true
    end
  end
end
