#! /usr/bin ruby

require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'operations_with_rates', '~> 0.1.1'
end


require 'operations_with_rates'

# Задача:
# Число (система счисления с основанием 10) 3*16**2018 -2*8**1028 -3*4**1100 - 2**1050 -2022
# записали в системе счисления с основанием 4. Сколько 3-ек содержит эта запись?

decimal_number = 3*16**2018 -2*8**1028 -3*4**1100 - 2**1050 -2022
base = 4
couting_char = 3.to_s

operations_with_rates = OperationsWithRates.new(decimal_number, base, couting_char)

puts "DECIMAL_NUMBER  #{operations_with_rates.decimal_number}"
puts "BASE   #{operations_with_rates.base}"
puts "COUTING_CHAR  #{operations_with_rates.couting_char}"
operations_with_rates.show_result
