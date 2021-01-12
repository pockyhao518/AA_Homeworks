# without partial 
# json.array! @gifts do |gift|
#     json.title gift.title
#     json.description gift.description
# end


json.array! @gifts do |gift|
    json.partial! 'api/gifts/gift', gift: gift

end