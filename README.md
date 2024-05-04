# Mastermind Game

## Introduction
Mastermind is a classic code-breaking game where one player, the code-maker, creates a secret code, and the other player, the code-breaker, tries to guess the code within a certain number of attempts. The code-breaker receives feedback after each guess to help them deduce the correct code.

This project implements a text-based version of the Mastermind game in Ruby.

## Installation
1. Make sure you have Ruby installed on your system. You can download it from [here](https://www.ruby-lang.org/en/downloads/).
2. Clone this repository to your local machine.
3. Navigate to the project directory in your terminal.
4. Run `bundle install`
5. Run `ruby mastermind.rb` to start the game.

## How to Play
1. Upon starting the game, a random secret code will be generated.
2. You will have 12 attempts to guess the secret code.
3. Enter your guess consisting of four numbers between 1 and 6, not separated by spaces (e.g., `1234`).
4. After each guess, you will receive feedback indicating the number of correct numbers in the correct positions and the number of correct numbers in the wrong positions.
5. Use the feedback to make educated guesses and try to crack the code within the given attempts.
6. If you're unable to guess the code within 12 attempts, the game will end, revealing the secret code.

## Feedback Symbols
- `✓`: Indicates a correct number in the correct position.
- `•`: Indicates a correct number in the wrong position.

## Dependencies
- This game relies on ANSI escape codes for colorful output. Make sure your terminal supports ANSI colors for the best experience.

## Contributing
Contributions are welcome! If you'd like to contribute to this project, please fork the repository, make your changes, and submit a pull request.
