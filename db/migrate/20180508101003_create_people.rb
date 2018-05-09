class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|

      t.boolean :is_customer

      t.string :anonymous_ids, array: true
      t.string :user_ids, array: true
      t.string :emails, array: true

      t.timestamps
    end
    add_index :people, :is_customer
    add_index :people, :anonymous_ids
    add_index :people, :user_ids
    add_index :people, :emails
  end
end
