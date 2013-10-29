class CreateLizds < ActiveRecord::Migration
  def change
    create_table :lizds do |t|

      t.timestamps
    end
  end
end
