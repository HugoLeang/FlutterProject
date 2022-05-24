import 'dart:math';
import 'dart:io';

void main() {
  Game game = Game();
  game.gameLoop();
}

class Game {
  bool isPlaying = true;
  int turnCount = 0;
  Game();

  gameLoop() {
    while (isPlaying) {
      print("To launch a game type P to stop type Q");
      String? input = stdin.readLineSync();
      if (input == null) return;

      input = input.toUpperCase();
      if (input == 'P') {
        //Reset state
        turnCount = 0;
        do {
          turnCount++;
        } while (!hasWin(launchDices(turnCount)));
        print("You get a double [6] after $turnCount rolls");
      }
      if (input == 'Q') {
        isPlaying = false;
      }
    }
  }

  Tuple<int, int> launchDices(int turnId) {
    var rng = Random();
    Tuple<int, int> dices = Tuple(rng.nextInt(7), rng.nextInt(7));
    print("Round result: \n [${dices.key}] [${dices.value}] at roll $turnId");
    return dices;
  }

  bool hasWin(Tuple<int, int> dices) {
    if (dices.key == 6 && dices.value == 6) return true;
    return false;
  }
}

class Tuple<T, Y> {
  T key;
  Y value;
  Tuple(T this.key, Y this.value);
}
