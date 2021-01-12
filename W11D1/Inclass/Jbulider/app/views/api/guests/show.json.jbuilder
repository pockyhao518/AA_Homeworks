# Use json.extract! to include the guest's name, age, and favorite color. 
# Make sure you don't include created_at or updated_at

# if we use a partial, it should be one line
# because everything is already set up in _guest

json.partial! 'api/guests/guest', guest: @guest


# Using json.array! at the top level here will cause our other guest information to break. 
# Nest your data by passing it as an argument to json.gifts.
#Associated data gifts for individual guests `guest`
json.gifts do 
    json.array! @guest.gifts, :title, :description
end
