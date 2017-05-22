#!/usr/bin/ruby
require 'yandex-translator'
require 'colorize'
#File.open(ARGV[0]) do

api_key = 'trnsl.1.1.20170504T191138Z.6224877a535703ec.65f8c76706d774638f77c471c5dfa55c1b639ac5'
translator = Yandex::Translator.new(api_key)
st = File.read(ARGV[0])
r = translator.translate st, from: 'ru', to: 'pl'
puts r
IO.write("new_#{ARGV[0]}", r)
puts "Done!".green