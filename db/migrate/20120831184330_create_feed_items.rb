class CreateFeedItems < ActiveRecord::Migration
  def change
    create_table :feed_items do |t|
      t.column :link, :string
      t.column :title, :string
      t.column :summary, :string, limit: 2.megabytes
      t.column :content, :string, limit: 2.megabytes
      t.column :author, :string
      t.column :contributor, :string
      t.column :rights, :string
      t.column :guid, :string
      t.column :updated, :datetime
      t.column :published, :datetime
      t.references :feed
      t.timestamps
    end
  end
end
