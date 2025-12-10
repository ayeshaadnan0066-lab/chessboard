import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChessTemplate(),
    );
  }
}

class ChessTemplate extends StatelessWidget {
  const ChessTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(title: const Text("Chess Template")),
      body: Center(
        child: Container(
          width: 320,
          height: 320,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
          ),
          child: Column(
            children: [
              // ROW 1
              row1(),

              // ROW 2
              row2(),

              // ROW 3
              emptyRowDark(),

              // ROW 4
              emptyRowLight(),

              // ROW 5
              emptyRowDark(),

              // ROW 6
              emptyRowLight(),

              // ROW 7
              row7(),

              // ROW 8
              row8(),
            ],
          ),
        ),
      ),
    );
  }

  // ---------------- ROWS ----------------

  Widget row1() {
    return chessRow(
      Colors.brown, "♜",
      Colors.white, "♞",
      Colors.brown, "♝",
      Colors.white, "♛",
      Colors.brown, "♚",
      Colors.white, "♝",
      Colors.brown, "♞",
      Colors.white, "♜",
    );
  }

  Widget row2() {
    return chessRow(
      Colors.white, "♟",
      Colors.brown, "♟",
      Colors.white, "♟",
      Colors.brown, "♟",
      Colors.white, "♟",
      Colors.brown, "♟",
      Colors.white, "♟",
      Colors.brown, "♟",
    );
  }

  Widget row7() {
    return chessRow(
      Colors.brown, "♙",
      Colors.white, "♙",
      Colors.brown, "♙",
      Colors.white, "♙",
      Colors.brown, "♙",
      Colors.white, "♙",
      Colors.brown, "♙",
      Colors.white, "♙",
    );
  }

  Widget row8() {
    return chessRow(
      Colors.white, "♖",
      Colors.brown, "♘",
      Colors.white, "♗",
      Colors.brown, "♕",
      Colors.white, "♔",
      Colors.brown, "♗",
      Colors.white, "♘",
      Colors.brown, "♖",
    );
  }

  Widget emptyRowDark() {
    return chessRow(
      Colors.brown, "",
      Colors.white, "",
      Colors.brown, "",
      Colors.white, "",
      Colors.brown, "",
      Colors.white, "",
      Colors.brown, "",
      Colors.white, "",
    );
  }

  Widget emptyRowLight() {
    return chessRow(
      Colors.white, "",
      Colors.brown, "",
      Colors.white, "",
      Colors.brown, "",
      Colors.white, "",
      Colors.brown, "",
      Colors.white, "",
      Colors.brown, "",
    );
  }

  // ---------------- SINGLE ROW ----------------

  Widget chessRow(
    Color c1, String p1,
    Color c2, String p2,
    Color c3, String p3,
    Color c4, String p4,
    Color c5, String p5,
    Color c6, String p6,
    Color c7, String p7,
    Color c8, String p8,
  ) {
    return Expanded(
      child: Row(
        children: [
          square(c1, p1),
          square(c2, p2),
          square(c3, p3),
          square(c4, p4),
          square(c5, p5),
          square(c6, p6),
          square(c7, p7),
          square(c8, p8),
        ],
      ),
    );
  }

  // ---------------- SINGLE SQUARE ----------------

  Widget square(Color color, String piece) {
    return Expanded(
      child: Container(
        color: color,
        child: Center(
          child: Text(
            piece,
            style: const TextStyle(fontSize: 26),
          ),
        ),
      ),
    );
  }
}