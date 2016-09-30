class AddPartNumberToProducts < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_id
      t.string :email
      t.string :session_token
      t.datetime :timestamps
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end
end
