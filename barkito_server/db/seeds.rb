# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'smarter_csv' 

file='/Users/daniel.calderon/vue_ruby_real/vue_ruby v1.0/barkito_server/db/lic_db.csv'

options = {}
SmarterCSV.process(file, options) do |chunk|
  chunk.each do |data_hash|
    Vendor.create!( data_hash )
  end
end

