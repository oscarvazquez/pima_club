class FixFacets < ActiveRecord::Migration
  def change
  	remove_column :colors, :color, :string
  	add_column :colors, :att, :string
  	remove_column :sizes, :size, :string
  	add_column :sizes, :att, :string
  	remove_column :styles, :style, :string
  	add_column :styles, :att, :string
  end
end
