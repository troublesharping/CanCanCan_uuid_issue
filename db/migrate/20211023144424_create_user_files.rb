class CreateUserFiles < ActiveRecord::Migration[6.1]
  def change
    create_table :user_files do |t|
      t.string :uuid
      t.text :data
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end

    add_index :user_files, :uuid, unique: true
  end
end
