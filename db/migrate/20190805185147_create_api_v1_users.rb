class CreateApiV1Users < ActiveRecord::Migration[5.2]
  def change
    create_table :api_v1_users do |t|
      t.string :first_name
      t.string :username
      t.string :password_digest
      t.string :avatar

      t.timestamps
    end
  end
end
