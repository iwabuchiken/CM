# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 1.upto(10) do |i|
#     
    # music = Music.new(:file_name => "Music-#{i}")
#     
    # music.save
#     
# end

# 1.upto(5) do |i|
#   
  # while 
    # rand_num = rand(Music.all.size)
#   
    # unless rand_num == 0
       # break
    # end
  # end
#   
  # work = Work.new(:music_id => rand_num)
#   
  # work.save
#   
# end

1.upto(5) do |i|
  
  while 
    rand_num = rand(Music.all.size)
  
    unless rand_num == 0
       break
    end
  end
  
  work = Work.find(i)
  
  work.update_attributes(:serial_num => "A-#{rand_num}")
  
end