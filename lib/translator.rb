# require modules here
require "yaml"
#thing = YAML.load_file('emoticons.yml')

def load_library(file_path = 'emoticons.yml')
  # code goes here
  new_hash = {}
  library = YAML.load_file(file_path)
   library.map do |(key, value)|
   new_hash[key] <<  {
     :english => value[0],
     :japanse => value[1]
   }
   end
   binding.pry
   new_hash
end

def get_japanese_emoticon(file_path, english_emoticon)
  # code goes here
  load_library(filepath).select do |(key, value)|
    value[:english] == english_emoticon
    return value[:japanese_emoticon]
 end  
end

def get_english_meaning(file_path, japanese_emoticon)
  # code goes here
  load_library(filepath).select do |(key, value)|
    value[:japanese] == japanese_emoticon
   return key
  end
  
end