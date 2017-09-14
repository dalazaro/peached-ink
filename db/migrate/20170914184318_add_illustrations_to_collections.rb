class AddIllustrationsToCollections < ActiveRecord::Migration[5.1]
  change_table :collections do |t|
  	t.string :illustration01
    t.string :illustration02
    t.string :illustration03
    t.string :illustration04
    t.string :illustration05
    t.string :illustration06
    t.string :illustration07
    t.string :illustration08
    t.string :illustration09
    t.string :illustration10
  end
end
