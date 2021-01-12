  
# we have a `user` variable (but not an @user ivar becuase this is a partial)
# we want to "extract" their id, username, and location_id
# return an object with ^ key-value pairs

json.extract! guest, :id, :name, :age, :favorite_color