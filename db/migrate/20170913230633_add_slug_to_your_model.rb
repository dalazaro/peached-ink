class AddSlugToYourModel < ActiveRecord::Migration[5.1]
  change_table :collections do |t|
    t.string :slug, after: :id
  end
end
