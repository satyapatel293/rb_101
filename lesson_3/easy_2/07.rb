
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)


# p flintstones.concat(['Dino', 'Hoppy']) 
# p flintstones.push('Dino', 'Hoppy')



#below is how they solved sort of diff but the same
p flintstones.push("Dino").push("Hoppy")
p flintstones.concat(%w(Dino Hoppy))
