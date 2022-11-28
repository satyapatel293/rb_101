hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}


#poorly named variables also realize that map can change hsh into array faster 


hsh.map do |_, details|
  if details[:type] == 'fruit' 
    details[:colors].map { |word| word.capitalize }
  else
    details[:size].upcase
  end
end
