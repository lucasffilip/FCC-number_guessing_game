#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read NAME
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$NAME';")
if [[ -z $USER_ID ]]
then
  echo "Welcome, $NAME! It looks like this is your first time here."
  INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES('$NAME');")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$NAME';")
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games INNER JOIN users USING (user_id) WHERE username = '$NAME'")
  BEST_GAME=$($PSQL "SELECT MIN(number_of_guess) FROM games INNER JOIN users USING (user_id) WHERE username = '$NAME'")
  echo "Welcome back, $NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
echo "Guess the secret number between 1 and 1000:"
read GUESS
GUESSES=1
while [[ $GUESS != $SECRET_NUMBER ]]
do
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    read GUESS
  else
    if [[ $GUESS > $SECRET_NUMBER ]]
    then
      echo "It's lower than that, guess again:"
      read GUESS
      GUESSES=$(( $GUESSES + 1 ))
    else
      echo "It's higher than that, guess again:"
      read GUESS
      GUESSES=$(( $GUESSES + 1 ))
    fi
  fi  
done
echo "You guessed it in $GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, number_of_guess) VALUES($USER_ID, $GUESSES);")