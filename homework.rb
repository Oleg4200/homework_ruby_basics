class ValidationError < StandardError; end

def validate(key)
  arr_key = key.to_s.split('')
  if arr_key.length != 16 || arr_key[0] != '5' || !(1..5).include?(arr_key[1].to_i)
    raise ValidationError
  end

  sum = 0
  arr_key.each_with_index do |item, index|
    element = (index % 2).zero? ? (item.to_i * 2).to_s : item
    sum += element.split('').reduce(0) { |a, e| a + e.to_i }
  end
  (sum % 10).zero?
rescue ValidationError
  false
end
