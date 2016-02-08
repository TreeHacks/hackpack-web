class CreateYaks < ActiveRecord::Migration
  def change
    create_table :yaks do |t|
      t.string :contents
      t.integer :upvotes
    end
  end
end
