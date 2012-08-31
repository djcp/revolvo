class AddFeed < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.column :title, :string
      t.column :rss_url, :string
      t.timestamps

    end
  end
end
