# require modules here
require "yaml"
require 'pry'


def load_library(path)
ffinal_hash = {}
 YAML.load_file(path).each do |key, value|
ffinal_hash[key] = {}
final_hash[key][:english] = value[0]
final_hash[key][:japanese] = value[1]
end
final_hash
end


#def get_english_meaning(path, emoticon)
#load_library(path)
#
#
#
#
#
