class AddCreatedAtToYaks < ActiveRecord::Migration
  def change
    change_table :yaks do |t|
      t.datetime :created_at
    end
  end
end
