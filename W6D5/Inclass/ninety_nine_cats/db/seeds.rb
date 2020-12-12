# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first
ActiveRecord::Base.transaction do 
    Cat.delete_all
    CatRentalRequest.delete_all 

    first_cat = Cat.create!({
        birth_date: "2020-12-01",
        color: "black",
        name: "Salem",
        sex: "M",
        description: "Sabrina the Teenage Witch's cat"
    })

    request1 = CatRentalRequest.create!({
        cat_id: first_cat.id,
        start_date: "2020-12-02",
        end_date: "2020-12-03"
    })
    request2 = CatRentalRequest.create!({
        cat_id: first_cat.id,
        start_date: "2020-12-02",
        end_date: "2020-12-03"
    })
end
