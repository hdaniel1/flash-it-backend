class CreateApiV1Categories < ActiveRecord::Migration[5.2]
  def change
    create_table :api_v1_categories do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
