# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
viewed_froms = ['YouTube', 'Facebook', 'Physical Church']
viewed_froms.each { |text| ViewedFrom.create([{ text: text }