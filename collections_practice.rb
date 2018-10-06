require "pry"

def begins_with_r(array)
  answer = 0 
  array.each do |tool|
   if tool.split("")[0].downcase == "r"
     answer += 1 
   end
  end
  if answer == 3
     true
  else 
     false
  end
end

def contain_a(array)
  a_array = []
  array.each do |word|
    if word.include? "a"
      a_array.push(word)
    end
  end
  a_array
end

def first_wa(array)
  array.each do |word|
    if word[0] + word[1] == "wa"
      return word
    end
  end
end

def remove_non_strings(array)
  string_array = []
  array.each do |variable|
    if variable.class == String
      string_array.push(variable)
    end
  end
  return string_array
end

def count_elements(array)
  array_of_hashes = []
  array_of_names = []
  current_name = ""
  
  array.each do |hashes|
    if hashes[:name] != current_name
     current_hash = {}
     current_hash[:name] = hashes[:name]
     current_hash[:count] = 1
     array_of_hashes.push(current_hash)
     current_name = hashes[:name]
   else
     array_of_hashes.select do |name_hash|
       name_hash[:count] += 1
     end
   end
  end
 puts array_of_hashes
end

count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])

#  describe '#count_elements' do
#
#    # Question 5
#
#    it 'count how many times something appears in an array' do
#      expect(count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])).to eq([{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}])
#    end



