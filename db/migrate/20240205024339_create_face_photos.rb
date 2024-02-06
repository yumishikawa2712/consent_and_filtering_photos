class CreateFacePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :face_photos do |t|
      t.references :target, null: false, foreign_key: true

      t.timestamps
    end
  end
end
