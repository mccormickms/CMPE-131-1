class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :content
      t.integer :price
      t.integer :zipcode

      t.timestamps
    end
  end
end
