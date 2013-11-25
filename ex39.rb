# this is irb, I post here to add comment
>> things = ['a','b','c','d']
=> ["a", "b", "c", "d"]
>> puts things[1]
b
=> nil
>> things[1] = 'z'
=> "z"
>> puts things[1]
z
=> nil
# .inspect is a little bit confusing, please check below website:
# http://guides.ruby.tw/ruby/accessors.html
# 我們要直接查看物件時，就會出現 #<anObject:0x83678> 這個難懂的訊息。
# 這只是個預設的行為，我們可以隨意變更。只要加上稱為 inspect 的方法， 
# 就會傳回以合理方式描述物件的字串，包括物件部分或所有實例變數的狀態。
# 一個相關的方法稱為 to_s （轉換為字串），於輸出物件時使用。一般來說，
# 你可以將 inspect 想像為編寫程式並用以除錯的工具，而 to_s 則是重新定義
# 程式輸出的方式。eval.rb 顯示結果時就會使用 inspect。你可使用 p 方法，
# 輕易地從程式取出除錯輸出。
>> puts things.inspect
["a", "b", "c", "d"]
=> nil
>>

# to execute array, we use index, but index can only be numbers
# so, we have Hash that can be execute by ANYTHING
# array: index-item, index has to be numbers
# Hash: key-value, key can be anything but not only numbers

# go irb again
>> stuff = {'name' => 'Zed', 'age' => 36, 'height' => 6*12+2}
# here "name", "height", "age" are keys, they have coressponding values
=> {"name"=>"Zed", "height"=>74, "age"=>36}
>> puts stuff['name']
Zed
=> nil
>> puts stuff['age']
36
=> nil
>> puts stuff['height']
74
=> nil
>> stuff['city'] = "San Francisco"
=> "San Francisco"
>> puts stuff['city']
San Francisco
=> nil
>>

# To add new element, or key-value pair, we can do as below
>> stuff[1] = "Wow"
=> "Wow"
>> stuff[2] = "Neato"
=> "Neato"
>> puts stuff[1]
Wow
=> nil
>> puts stuff[2]
Neato
=> nil
>> puts stuff.inspect()
{1=>"Wow", "name"=>"Zed", 2=>"Neato", "city"=>"San Francisco",
     "height"=>74, "age"=>36}
=> nil
>>

# To delete delete element in Hash
>> stuff.delete('city')
=> "San Francisco"
>> stuff.delete(1)
=> "Wow"
>> stuff.delete(2)
=> "Neato"
>> puts stuff.inspect
{"name"=>"Zed", "height"=>74, "age"=>36}
=> nil
>>

# create a mapping of state to abbreviation
states = {
    'Oregon' => 'OR',
    'Florida' => 'FL',
    'California' => 'CA',
    'New York' => 'NY',
    'Michigan' => 'MI'
}

# create a basic set of states and some cities in them
cities = {
    'CA' => 'San Francisco',
    'MI' => 'Detroit',
    'FL' => 'Jacksonville'
}

# add some more cities
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

# puts out some cities
puts '-' * 10
puts "NY State has: ", cities['NY']
puts "OR State has: ", cities['OR']

# puts some states
puts '-' * 10
puts "Michigan's abbreviation is: ", states['Michigan']
puts "Florida's abbreviation is: ", states['Florida']

# double Hash here
# do it by using the state then cities dict
puts '-' * 10
# cities[states['Michigan']]
# = cities['MI']
# = 'Detroit'
puts "Michigan has: ", cities[states['Michigan']]
puts "Florida has: ", cities[states['Florida']]

# puts every state abbreviation
puts '-' * 10
# for the Hash 'state', loop for every element as 'abbrev'
for state, abbrev in states
    puts "%s is abbreviated %s" % [state, abbrev]
end

# puts every city in state
puts '-' * 10
for abbrev, city in cities
    puts "%s has the city %s" % [abbrev, city]
end

# now do both at the same time
puts '-' * 10
for state, abbrev in states
    puts "%s state is abbreviated %s and has city %s" % [
        state, abbrev, cities[abbrev]]
end

puts '-' * 10
# if it's not there you get nil
state = states['Texas']

# state is false, not false is true, so if goes on
if not state
    puts "Sorry, no Texas."
end

# get a city with a default value
city = cities['TX'] || 'Does Not Exist'
puts "The city for the state 'TX' is: %s" % city