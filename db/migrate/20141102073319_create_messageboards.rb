class CreateMessageboards < ActiveRecord::Migration
  def change
    create_table :messageboards do |t|
      t.string :title
      t.text :body
      t.datetime :createdat

      t.timestamps
    end
  end
end
