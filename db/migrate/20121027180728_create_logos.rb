class CreateLogos < ActiveRecord::Migration
  def change
    create_table :logos do |t|
      t.string :url
      t.string :title

      t.timestamps
    end
  end
end
