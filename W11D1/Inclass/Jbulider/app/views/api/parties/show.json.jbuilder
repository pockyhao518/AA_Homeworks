#  include all guests, AND all of the guests' gifts
json.name @party.name

json.guests @party.guests do |guest| 
    json.gifts guest.gifts, :title, :description
    json.name guest.name
end

# json.guest @party.guests