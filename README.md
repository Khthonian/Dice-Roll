# Dice Roll
A command-line dice roller, inspired by the video game Baldur's Gate 3. The application simulates the dice rolls that are often found in tabletop gaming environments, as well as more custom arrangements.

## Features
- Simulates any number of dice rolls with varying dice faces (e.g., d4, d6, d8, d12, d20, etc.) as well as custom setups.
- Displays individual roll results as well as their cumulative total.
- The user can provide an optional target roll value, determining if the roll is successful or failed based on whether the total meets or exceeds the given value.

## Dependencies
- `math`
- `os`

## Usage
### Dice Roll
```bash
diceroll {NdS}
```
- `N` - The number of dice.
- `S` - The number of faces on each die.

### Dice Roll With Check Value
```bash
diceroll {NdS} {roll check value}
```

## Installation
1. Clone this repository or download the source code.
2. Run the `installDiceRoll.sh` script with `sudo` permissions:
```bash
sudo bash installDiceRoll.sh
```
3. Follow the on-screen prompts to complete installation.

## License
This project is licensed under the [MIT License](LICENSE).