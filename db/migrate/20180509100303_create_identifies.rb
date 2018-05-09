class CreateIdentifies < ActiveRecord::Migration[5.2]
  def change
    create_table :identifies do |t|

      t.belongs_to :person

      t.string :metadata_bundled, array: true
      t.string :metadata_unbundled, array: true

      t.string :anonymous_id
      t.string :user_id
      t.string :message_id

      t.string :project_id
      t.integer :version

      t.string :channel

      t.string :context_page_path
      t.string :context_page_referrer
      t.string :context_page_search
      t.string :context_page_title
      t.string :context_page_url

      t.string :context_user_agent
      t.string :context_ip

      t.jsonb :context_library

      t.jsonb :traits

      t.datetime :received_at
      t.datetime :sent_at
      t.datetime :timestamp
      t.datetime :original_timestamp

      t.timestamps
    end
    add_index :tracks, :anonymous_id
    add_index :tracks, :user_id
  end
end
