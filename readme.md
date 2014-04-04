# Code Retreat

We're pairing in 45 minute sessions.

```
students = ["Bill_Stites",
            "Brian_Donegan",
            "Carolyn_Ganon",
            "Cat_Gelinas",
            "Colin_Hart",
            "David_McCoy",
            "Gerald_Wolfe",
            "Isaac_Saqib",
            "Jason_Kaye",
            "Jesse_Ma",
            "Jon_Bichar",
            "Jonathan_Barcus",
            "Joshua_Guthals",
            "Megan_ONeill",
            "Michael_Oshman",
            "Mike_Beaujean",
            "Nick_Lohr",
            "Raphael_Wertheimer",
            "Rob_White",
            "Talal_Choudhury",
            "Thomas_Liou",
            "Xavier_Stewart"]

while students.any?
  students.shuffle!
  pair = students.pop(2)
  puts "Pair! #{pair}\nKeep? y/n"
  choice = gets.chomp.downcase
  pair.each { |student| students << student } if choice == "n"
end

puts "May the odds be ever in your favor"
```

## Choose two constraints

```
constraints = ["One level of indentation per method",
               "Don’t use the ELSE keyword",
               "Don’t abbreviate",
               "Keep all entities small",
               "Max three lines for methods, excluding `def` and `end`,
               "No classes with more than two instance variables",
               "Methods can only be three lines (excluding def and end)",
               "No Mouse or Trackpad",
               "No talking",
               "Back Seat Driver. Navigator Dictates."]
```

## 4 Principals to Focus On

- Small
- DRY
- Well Named
- Tested

## Retreats

Pair 1

# String Calculator

Create a simple String calculator with a method Add(string numbers)
The method can take 0, 1 or 2 numbers, and will return their sum (for an empty string it will return 0) for example "" or "1" or "1,2"

Start with the simplest test case of an empty string and move to 1 and two numbers
Remember to solve things as simply as possible so that you force yourself to write tests you did not think about

Remember to **refactor** after each passing test

Allow the Add method to handle an unknown amount of numbers

Allow the Add method to handle new lines between numbers (instead of commas).

the following input is ok:  "1\n2,3"  (will equal 6)
the following input is NOT ok:  "1,\n" (not need to prove it - just clarifying)

Support different delimiters
to change a delimiter, the beginning of the string will contain a separate line that looks like this:

```
"//[delimiter]\n[numbers…]"
```

for example `"//;\n1;2"` should return three where the default delimiter is ';' .

the first line is optional. All existing scenarios should still be supported

Calling Add with a negative number will raise an error with the message "negatives not allowed" - and the negative that was passed.if there are multiple negatives, show all of them in the exception message

Numbers bigger than 1000 should be ignored, so adding `2 + 1001  = 2`

Delimiters can be of any length with the following format:

```
"//[delimiter]\n"
```

for example:

`"//[***]\n1***2***3"` should return `6`

Allow multiple delimiters like this:

```
"//[delim1][delim2]\n"
```

for example `"//[*][%]\n1*2%3"` should return `6`.

make sure you can also handle multiple delimiters with length longer than one char

## Rest of day

# Battleship!

Pre-Game Layout

Each player has a 10x10 grid and can position each of their ships either vertically or horizontally
The columns are labeled A-L and the rows 1-10. A1 is the top left square and L10 the bottom right.
Ships may not overlap or go off the board

There are five ships which must each be placed by the player:

Aircraft Carrier - 5 squares
Battleship - 4 squares
Submarine - 3 squares
Cruiser - 3 squares
Destroyer - 2 squares

The Rules

Each turn, a player calls out one shot onto the other player's board.
The player being shot at responds with either "hit" or "miss"
The player tracks the shots they have taken on one board along with the results and the shots taken against them on their own board

If each square of a boat has been hit, they player responds "hit, you sunk my [X]" where X is the name of the boat

A player never gets more than one shot in a turn
If all of a player's ships are sunk, the opponent wins
Play does not stop until one player wins

# Gilded Rose

Gilded Rose Inventory System

  - All items have a SellIn value which denotes the number of days we have to sell the item
  - All items have a Quality value which denotes how valuable the item is
  - At the end of each day our system lowers both values for every item

  - Once the sell by date has passed, Quality degrades twice as fast
  - The Quality of an item is never negative
  - "Aged Brie" actually increases in Quality the older it gets
  - The Quality of an item is never more than 50
  - "Sulfuras", being a legendary item, never has to be sold or decreases in Quality
  - "Backstage passes", like aged brie, increases in Quality as it's SellIn value approaches; Quality increases by 2 when there are 10 days or less and by 3 when there are 5 days or less but Quality drops to 0 after the concert

We have recently signed a supplier of conjured items. This requires an update to our system:

  - "Conjured" items degrade in Quality twice as fast as normal items
