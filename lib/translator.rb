# require modules here
require "yaml"
require 'pry'

def load_library (file_path)
  file = YAML.load_file(file_path)
  dictionary = {}
  file.each do |name, emoji_array|
    dictionary[name] = {:english => {}, :japanese => {}}
    emoji_array.each_with_index do |emoji, index|
      if index == 0
        dictionary[name][:english] = emoji
      elsif index == 1
        dictionary[name][:japanese] = emoji
      end
    end
  end
  dictionary
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
