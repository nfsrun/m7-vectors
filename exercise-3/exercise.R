# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)
marbles <- c("periwinkle", "gold", "silver", "blue", "red", "clear")

# Use the `sample` function to select a single marble
print(paste("Selected marble: ", sample(marbles, 1)))

# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)
MarbleGame <- function(guess) {
  selected <- sample(marbles, 1)
  if(identical(guess, selected)){
    print("You guessed correctly! ")
    return(TRUE)
  }else{
    print("You guessed wrong... ")
    return(FALSE)
  }
}

# Play the marble game!
MarbleGame("red")

# Bonus: Play the marble game until you win, keeping track of how many tries you take
tries <-1
while(MarbleGame("red")!=TRUE) {
  tries <- tries+1
}
print(paste("Number of tries required: ", tries))

## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability

x <- 0
for (x in 1:100) {
  MarbleGame("red")
}