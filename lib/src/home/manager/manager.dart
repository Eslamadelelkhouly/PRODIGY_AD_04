import 'package:flutter/material.dart';

class Manager with ChangeNotifier {
  String kind = 'n';
  List<int> player1 = [];
  List<int> player2 = [];
  List<String> board = List.filled(9, 'n');
  String win_player = 'n';

  void reset() {
    player1 = [];
    player2 = [];
    board = List.filled(9, 'n');
    win_player = 'n';
    notifyListeners();
  }

  void setPlayer1(int index) {
    player1.add(index);
    board[index] = 'x';
    notifyListeners();
  }

  void setPlayer2(int index) {
    player2.add(index);
    board[index] = 'o';
    notifyListeners();
  }

  void check(int index) {
    if (player1.contains(index) || player2.contains(index)) return;
    if (player1.length <= player2.length) {
      setPlayer1(index);
    } else {
      setPlayer2(index);
    }
  }

  void win() {
    if ((board[0] == 'x' && board[1] == 'x' && board[2] == 'x') ||
        (board[3] == 'x' && board[4] == 'x' && board[5] == 'x') ||
        (board[6] == 'x' && board[7] == 'x' && board[8] == 'x') ||
        (board[0] == 'x' && board[3] == 'x' && board[6] == 'x') ||
        (board[1] == 'x' && board[4] == 'x' && board[7] == 'x') ||
        (board[2] == 'x' && board[5] == 'x' && board[8] == 'x') ||
        (board[0] == 'x' && board[4] == 'x' && board[8] == 'x') ||
        (board[2] == 'x' && board[4] == 'x' && board[6] == 'x')) {
      win_player = 'x';
    } else if ((player2[0] == 'o' && player2[1] == 'o' && player2[2] == 'o') ||
        (board[3] == 'o' && board[4] == 'o' && board[5] == 'o') ||
        (board[6] == 'o' && board[7] == 'o' && board[8] == 'o') ||
        (board[0] == 'o' && board[3] == 'o' && board[6] == 'o') ||
        (board[1] == 'o' && board[4] == 'o' && board[7] == 'o') ||
        (board[2] == 'o' && board[5] == 'o' && board[8] == 'o') ||
        (board[0] == 'o' && board[4] == 'o' && board[8] == 'o') ||
        (board[2] == 'o' && board[4] == 'o' && board[6] == 'o')) {
      win_player = 'o';
    } else {
      win_player = 'n';
    }
    notifyListeners();
  }
}
