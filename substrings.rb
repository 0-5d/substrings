require 'pry-byebug'
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit",
"below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def main(waldo, dictionary)
    count_hash = {}
    if waldo.is_a? String
        waldo = waldo.split(" ")
        waldo.map! do |n|
            n = n.delete ","
            n = n.delete "."
            n = n.delete "!"
            n = n.delete "?"
        end
    end
    waldo.each do |n|
        count_hash[n] = dictionary.count(n)
    end
    p count_hash
    count_hash
end

main("down below!", dictionary)