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
  dictionary = load_library(file_path)
  eng_name = ""
  dictionary.each do |name, value|
    if emoji == value[:japanese]
       return eng_name = name
    else
      eng_name = "Sorry, that emoticon was not found"
    end
  end
  eng_name
end

def get_english_meaning(file_path, emoji)
  dictionary = load_library(file_path)
  eng_name = ""
  dictionary.each do |name, value|
    if emoji == value[:japanese]
       return eng_name = name
    else
      eng_name = "Sorry, that emoticon was not found"
    end
  end
  eng_name
end
