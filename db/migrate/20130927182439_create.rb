class Create < ActiveRecord::Migration
  def change
    t.string :long_url
    t.string :short_url

    t.timestamps 
  end
end
