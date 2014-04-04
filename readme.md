# Code Retreat

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
```

## Choose two constraints

One level of indentation per method
Don’t use the ELSE keyword
First class collections
One dot per line
Don’t abbreviate
Keep all entities small
No classes with more than two instance variables
No getters/setters/properties
Methods can only be three lines (excluding def and end)
No Mouse or Trackpad
No talking
Back Seat Driver. Navigator Dictates.

## 4 Principals to Focus On

Small
DRY
Well Named
Tested

## Retreats

# String Calculator

Create a simple String calculator with a method int Add(string numbers)
The method can take 0, 1 or 2 numbers, and will return their sum (for an empty string it will return 0) for example "" or "1" or "1,2"

Start with the simplest test case of an empty string and move to 1 and two numbers
Remember to solve things as simply as possible so that you force yourself to write tests you did not think about

Remember to **refactor** after each passing test

Allow the Add method to handle an unknown amount of numbers

Allow the Add method to handle new lines between numbers (instead of commas).

the following input is ok:  "1\n2,3"  (will equal 6)
the following input is NOT ok:  "1,\n" (not need to prove it - just clarifying)

Support different delimiters
to change a delimiter, the beginning of the string will contain a separate line that looks like this:   "//[delimiter]\n[numbers…]" for example "//;\n1;2" should return three where the default delimiter is ‘;’ .
the first line is optional. all existing scenarios should still be supported
Calling Add with a negative number will throw an exception "negatives not allowed" - and the negative that was passed.if there are multiple negatives, show all of them in the exception message
Numbers bigger than 1000 should be ignored, so adding 2 + 1001  = 2
Delimiters can be of any length with the following format:  "//[delimiter]\n" for example: "//[***]\n1***2***3" should return 6
Allow multiple delimiters like this:  "//[delim1][delim2]\n" for example "//[*][%]\n1*2%3" should return 6.
make sure you can also handle multiple delimiters with length longer than one char

# Robots

Robot

Create a Robot which:

has coordinates on an x,y plane that specify her location
has a bearing of north, south, east, or west
can turn left and right
can advance
RobotSimulator

Beyond the robot itself, create a RobotSimulator which can...

place a robot at an arbitrary coordinate with a bearing
take an instruction sequence like "LARA" and cause a robot to turn left, advance, turn right, and advance

Other Classes

Outside of Robot and RobotSimulator, you're welcome to create any classes/modules that are helpful to your implementation.

# Battleship

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


# Bowling

![:image]http://www.iowabowl.com/jcusbcba/Tips/bowling_score_frame.jpg

The game consists of 10 frames as shown above.  In each frame the player has
two opportunities to knock down 10 pins.  The score for the frame is the total
number of pins knocked down, plus bonuses for strikes and spares.

A spare is when the player knocks down all 10 pins in two tries.  The bonus for
that frame is the number of pins knocked down by the next roll.  So in frame 3
above, the score is 10 (the total number knocked down) plus a bonus of 5 (the
number of pins knocked down on the next roll.)

A strike is when the player knocks down all 10 pins on his first try.  The bonus
for that frame is the value of the next two balls rolled.

In the tenth frame a player who rolls a spare or strike is allowed to roll the extra
balls to complete the frame.  However no more than three balls can be rolled in
tenth frame.

Write a class named "Game" that has two methods

roll(pins) is called each time the player rolls a ball.  The argument is the number of pins knocked down.
score() is called only at the very end of the game.  It returns the total score for that game.

# Game of Life

The universe of the Game of Life is an infinite two-dimensional orthogonal grid of square cells, each of which is in one of two possible states, live or dead. Every cell interacts with its eight neighbors, which are the cells that are directly horizontally, vertically, or diagonally adjacent. At each step in time, the following transitions occur:

Any live cell with fewer than two live neighbours dies, as if caused by underpopulation.
Any live cell with more than three live neighbours dies, as if by overcrowding.
Any live cell with two or three live neighbours lives on to the next generation.
Any dead cell with exactly three live neighbours becomes a live cell.

The initial pattern constitutes the seed of the system. The first generation is created by applying the above rules simultaneously to every cell in the seed?births and deaths happen simultaneously, and the discrete moment at which this happens is sometimes called a tick (in other words, each generation is a pure function of the one before). The rules continue to be applied repeatedly to create further generations.

# Boggle

Letters are layed out in a 4 x 4 grid.  Players search for words that can be constructed from the letters of sequentially adjacent cubes, where "adjacent" cubes are those horizontally, vertically, and diagonally neighboring.

Words must be at least three letters long, may include singular and plural (or other derived forms) separately, but may not use the same letter cube more than once per word.

| Word length | Points |
| ----------- | ------ |
| 3, 4        |      1 |
| 5           |      2 |
| 6           |      3 |
| 7           |      5 |
| 8+          |     11 |

One cube is printed with "Qu." This is because Q is nearly always followed by U in English words (see exceptions), and if there were a Q in Boggle, it would be challenging to use if a U did not, by chance, appear next to it. For the purposes of scoring Qu counts as two letters: squid would score two points (for a five-letter word) despite being formed from a chain of only four cubes.

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
