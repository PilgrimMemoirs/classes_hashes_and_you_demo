#### HASHES, CLASSES & YOU ####

### Hash review:
people = [
  { name: "Jamie", email: "jamie@adadevelopersacademy.org" },
  { name: "Chris", email: "chris@adadevelopersacademy.org" }
]

#puts people[1][:email]

#As we get into API's, we will start working A LOT with very large hashes that will very likely have nested data structures.

jamie = { jamie: { last_name: "Pilgrim",
                first_name: "Jamie",
                address: { street: "123 fake st", city: "Seattle", state: "WA"},
                pets: [{ name:    "Amper", species: "tabby cat" }, { name: "Octo", species: "mini puma"}]
                }
        }

#puts jamie[:jamie][:pets][0][:name]

#How do I find the name's of Jamie's pets?
    jamie[:jamie][:pets].each do |pet|
      puts pet[:name]
    end


### Let's setup an Address class

# class Address
#   attr_accessor :first_name, :last_name, :street1, :street2, :city, :state, :zip
#
#   def initialize(first_name, last_name, street1, street2, city, state, zip)
#     @first_name = first_name
#     @last_name = last_name
#     @street1 = street1
#     @street2 = street2
#     @city = city
#     @state = state
#     @zip = zip
#   end
#
# end

#a1 = Address.new("Jamie", "Pilgrim", "fake street", "seattle", "WA", 98101, "apt a1")

 #puts a1.zip

#puts a1.class







### Let's refactor the Address class to accept a hash as parameters instead

class Address
  attr_accessor :first_name, :last_name, :street1, :street2, :city, :state, :zip, :address_hash

  def initialize(address_hash)
    @address_hash = address_hash
    @first_name = address_hash[:first_name]
    @last_name = address_hash[:last_name]
    @street1 = address_hash[:street1]
    @street2 = address_hash[:street2]
    @city = address_hash[:city]
    @state = address_hash[:state]
    @zip = address_hash[:zip]
  end

end

a1 = Address.new({first_name: "Jamie", last_name: "Pilgrim", state: "WA", zip: 98101, street1: "something", pets: ["Amper", "Octo"]})
# puts a1.first_name.class
puts a1.address_hash




### Why do it this way?




### More Practice: Setup a person class that also takes in a hash argument. That hash argument should have at least one address that is an Address object.
