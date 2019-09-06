# Ruby Basics Homework

In this homework we will need to implement license key validation method. 

Let's do this together!

Your method expects license key to be an Integer.

Your method checks if license key meets all of the requirements below:

## Requirements:
1. 16 digits
2. starts with 51, 52, 53, 54, 55
3. match checksum

To match checksum you need 3 steps:

a) Multiply every other digit by 2, starting with the number’s second-to-last digit. If result is 2-digit number (for example: 9 * 2 = 18) - add those digits within this number, until result will equal to 1-digit number (1 + 8 = 9).
Then add those digits together.

b) Add the sum to the sum of the digits that weren’t multiplied by 2


c) If the total’s last digit is 0 (or, put more formally, if the total modulo 10 is congruent to 0), the checksum is matched!

### Example:

**5**1**6**9**2**9**4**8**1**4**1**5**3**3**2**1

5 * 2 + 1 + 6 * 2 + 9 + 2 * 2 + 9 + 4 * 2 + 8 + 1 * 2 + 4 + 1 * 2 + 5 + 3 * 2 + 3 + 2 * 2 + 1

1 + 1 + 1 + 2 + 9 + 4 + 9 + 8 + 8 + 2 + 4 + 2 + 5 + 6 + 3 + 4 + 1 = 70

70 % 10 = 0 - it's a match!

## Method return:

Your method will return true if license key is valid and false - if license key is not valid

## 5 mandatory ruby elements to use in your implementation
1. modulus (%)
2. range (.. ...)
3. ternary operator (? :)
4. reduce or reject
5. one of each methods: each, each_with_index or each_index


## Assesment criterias:
**-1**  :  GitlabCI is red or home task was not submitted before 09.06 (Sunday), 11:00 AM (Kyiv time)

**0**   :  GitlabCI is green

**1**   : GitlabCI is green *and* you used ALL elements from list '5 mandatory ruby elements' (see above)

**2**   : GitlabCI is green *and* you used ALL elements from list '5 mandatory ruby elements' (see above) *and* added minimum one Exception Handler to the method implementation

## Good news:
Number of tries is not limited within given period of time: 06.06 (after Ruby Basics lecture ends) till 09.06 (Sunday), 11:00 AM (Kyiv time). Don't be shy!

To run tests locally:

`bundle install`

`bundle exec rspec`

To run rubocop locally:

`rubocop`# homework_ruby_basics
