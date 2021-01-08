# require modules here
require "yaml"
require 'pry'

def load_library(file_path)
  file = YAML.load_file(file_path)
  # code goes here
  file_path.each do |key, value|
          binding.pry
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
