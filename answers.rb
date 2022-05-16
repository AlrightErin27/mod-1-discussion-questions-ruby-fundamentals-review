# 1 . What does the below method return?
def greet(name)
  puts "Hello, #{name}"
end
greet('Steven')

# A)
'Hello, Steven'

# 2 . What does this method return?
def love_this_veggie?(vegetable)
  vegetable == 'broccoli' ? 'Nah, thanks' : 'I love it!'
end
puts love_this_veggie?('yes')

# A)
'I love it!'

# 3 . How would you select all of the words that start with the letter "a" from the below array?
['apple', 'pear', 'face', 'champagne', 'palm tree', 'aardvark', 'pineapple']
# A)
def selectA(array)
  result = []
  array.sort.each { |word| result.push(word) if word[0] == 'a' }
  return result
end

puts selectA(
       [
         'apple',
         'pear',
         'face',
         'champagne',
         'palm tree',
         'aardvark',
         'pineapple',
       ],
     )

# 4 . Write a method that takes in an argument of a sentence and returns the number of words in the sentence

# word_count("Hi, isn't this a great and interesting sentence??")

# => 8

# A)
def word_count(sentence)
  return sentence.split(' ').length
end

puts word_count("Hi, isn't this a great and interesting sentence??")

# 5 . What will the following method return?

def friendly_greeting(name = nil)
  name ||= 'friend'
  puts "Hey there, #{name}"
end

# A)
#if not argument entered it will return "Hey there, friend"
#otherwise it returns "Hi there, (((NAME ENTERED))"

# 6 . What will the following puts?
# best_animal = "cat"
# favorite_animal = best_animal
# puts favorite_animal
# => ?

# A)
'cat'

# 8 . What error, if any, will the following code raise?
# 'Blink' + 182

# A)
# + 182no implicit conversion of Integer into String

# 9 . How would you puts out any and all foods that are delicious?
foods = {
  'pie' => 'delicious',
  'broccoli' => 'not delicious',
  'carrots' => 'not delicious',
  'apples' => 'delicious',
  'peanut butter' => 'delicious',
}
# A)
def delicious(food_obj)
  arr = []
  food_obj.each { |food| arr.push(food[0]) if food[1] == 'delicious' }
  return arr
end

# puts delicious(foods)

# 10 . Delete all elements of the foods hash that are not delicious.
#A) see above

# 11 . What is the return value of this method?
character_names = [
  'Daenerys Targaryen',
  'Jon Snow',
  'Arya Stark',
  'Tyrion Lannister',
  'Sansa Stark',
  'Cersei Lannister',
  'Margaery Tyrell',
]

def downcase_all(array_of_strings)
  array_of_strings.each { |one_string| one_string.downcase }
end

#A)
# returns all strings in the array without any uppercase letters

# 12 . Write a method that puts out a random Agent Cooper quote.
cooper = {
  'name': 'Dale Bartholomew Cooper',
  'co-workers': ['Diane', 'Sheriff Harry S. Truman'],
  'favorite_drink': 'Coffee',
  'quotes': [
    'Damn fine cup of coffee',
    'Diane...',
    'This must be where pies go when they die',
    "That's what you do in a town where a yellow light still means slow down, not go faster.",
    'Every day, once a day, give yourself a present',
    'I have no idea where this will lead us, but I have a definite feeling it will be a place both wonderful and strange.',
  ],
}

#A)
def random_cooper(agent_obj)
  arr = agent_obj[:quotes]
  return arr[1 + rand(arr.count)]
end
puts random_cooper(cooper)
