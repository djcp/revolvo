class AddFeed < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.string :title
      t.string :subtitle
      t.string :description
      t.string :language
      t.string :link
      t.string :rss_url
      t.string :generator
      t.string :author
      t.string :icon
      t.string :logo
      t.string :rights
      t.datetime :updated
      t.string :guid
      t.datetime :next_update_at, default: Time.now
      t.timestamps
    end
  end
end
