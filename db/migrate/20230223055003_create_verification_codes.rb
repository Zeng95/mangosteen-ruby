class CreateVerificationCodes < ActiveRecord::Migration[7.0]
  def change
    create_table :verification_codes do |t|
      t.string :email
      t.integer :type, default: 1, null: false
      t.datetime :used_at

      t.timestamps
    end
  end
end
