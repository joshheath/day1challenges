require 'date'

# A hash of all house prices and transactions
# Data from the Land Registry and transformed through Postcodes.io

#this is the hash that we'll be working with
hash = {["Basingstoke and Deane", "Tadley South"]=>
  {:count=>1,
   :average=>94000,
   :transactions=>
    [[94000,
      "RG26 3UR",
      Date.parse("1995-09-01")]]},
 ["Camden", "Cantelowes"]=>
  {:count=>1,
   :average=>215000,
   :transactions=>
    [[215000,
      "NW1 9UB",
      Date.parse("1995-03-10")]]},
 ["Conwy", "Capelulo"]=>
  {:count=>1,
   :average=>40000,
   :transactions=>
    [[40000,
      "LL34 6RW",
      Date.parse("1995-03-24")]]},
 ["Luton", "Leagrave"]=>
  {:count=>1,
   :average=>30500,
   :transactions=>
    [[30500, "LU4 9JG", Date.parse("1995-11-30")]]},
 ["Melton", "Asfordby"]=>
  {:count=>1,
   :average=>37500,
   :transactions=>
    [[37500,
      "LE14 3YP",
      Date.parse("1995-08-31")]]},
 ["Sheffield", "Beighton"]=>
  {:count=>1,
   :average=>41950,
   :transactions=>
    [[41950, "S20 2QW", Date.parse("1995-06-30")]]},
 ["Stratford-on-Avon", "Wellesbourne East"]=>
  {:count=>1,
   :average=>70500,
   :transactions=>
    [[70500,
      "CV35 9RZ",
      Date.parse("1995-03-24")]]},
 ["Sunderland", "Millfield"]=>
  {:count=>1,
   :average=>26000,
   :transactions=>
    [[26000, "SR4 7DY", Date.parse("1995-12-18")]]},
 ["Taunton Deane", "Bishop's Lydeard"]=>
  {:count=>1,
   :average=>51500,
   :transactions=>
    [[51500, "TA4 3NJ", Date.parse("1995-02-24")]]},
 ["Test Valley", "St Mary's"]=>
  {:count=>1,
   :average=>60000,
   :transactions=>
    [[60000,
      "SP10 1JG",
      Date.parse("1995-06-23")]]}}

# read the data from the hash and return it as an array
def get_strings(hash)
  hashreturn = []
  hash.each do |key, value|
    district = key[0]
    ward = key[1]
    price = value[:transactions][0][0]
    date = value[:transactions][0][2].strftime('%m/%d/%y')
    hashreturn << [district, ward, price, date]
    #puts "A house was sold in #{district}, #{ward} for #{price} on #{date}"
  end
  return hashreturn
end

#take in the data as a hash and search through it before you output the result
def search_strings(arr, search)
  #if search is equal to district or ward, print info
  arr.each do |array|
    if search == array[0] || search == array[1]
      puts "A house was sold in #{array[0]}, #{array[1]} for #{array[2]} on #{array[3]}"
    end
  end
end

puts "Enter your search: "
search = STDIN.gets.chomp
search_strings(get_strings(hash), search)
