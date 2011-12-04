class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :author
      t.string :title
      t.string :year
      t.string :status

      t.timestamps
    end
  end
end
