flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)


p flintstones.map! {|name| name.slice(0..2)}

p flintstones