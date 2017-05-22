#!/usr/bin/ruby
require 'yandex-translator'
require 'colorize'
#File.open(ARGV[0]) do

api_key = 'trnsl.1.1.20170504T191138Z.6224877a535703ec.65f8c76706d774638f77c471c5dfa55c1b639ac5'
translator = Yandex::Translator.new(api_key)
system("rm output/*")
list = Dir.glob('input/*',File::FNM_DOTMATCH)-['input/.', 'input/..']
list.each do |ls|
    st = File.read(ls)
    r = translator.translate st, from: 'ru', to: 'pl'
    r += "\n"
    #puts r
    IO.write(ls.gsub('input/','output/'), r)
end
puts "Done!".green