#### HASHES, CLASSES & YOU ####

### Hash review:
people = [
  { name: "Jamie", email: "jamie@adadevelopersacademy.org" },
  { name: "Chris", email: "chris@adadevelopersacademy.org" }
]

  #A hash has key value pairs. Often the keys are symbols, values can be any type
jamie = { jamie: # this is the key
              # this entire hash is the value
              { last_name: "Pilgrim",
                first_name: "Jamie",
                address: {
                street: "123 fake st",
                city: "Seattle",
                state: "WA"
                },
                pets: [
                  { name:    "Amper",
                    species: "tabby cat"
                  },
                  { name:    "Octo",
                    species: "mini puma"
                  }
                ]
              }
            }

            #How do I find the name's of Jamie's pets? 

### Let's setup an Address class








### Let's refactor the Address class to accept a hash as parameters instead








### Why do it this way?




### More Practice: Setup a person class that also takes in a hash argument. That hash argument should have at least one address that is an Address object.
