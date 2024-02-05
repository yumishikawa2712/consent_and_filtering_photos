class CreateTargets < ActiveRecord::Migration[7.0]
  def change
    create_table :targets do |t|
      t.string :name
      t.boolean :photo_consent, default: false
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
