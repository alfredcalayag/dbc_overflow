class CreateUpvotes < ActiveRecord::Migration
  def change
    create_table :upvotes do |t|
      t.belongs_to :question, index: true
      t.belongs_to :user, index: true
    end
  end
end
