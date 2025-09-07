import 'dart:async';

import 'package:flutter/material.dart';
import 'package:async/async.dart';
import 'package:intl/intl.dart';
import 'package:simulado_detran/providers/dummy_questions.dart';
import 'package:simulado_detran/screens/main_screen.dart';

class GameScreen extends StatefulWidget {
  static const routeName = '/game_screen';

  final String categoryName;
  final dynamic questions;

  const GameScreen({required this.categoryName, required this.questions});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  var questionIndex = 0;

  var rightAnswers = 0;
  var wrongAnswers = 0;
  var selectedIndex = "";

  selectAnswer(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  skipQuestion() {
    var actualAnswer = widget.questions[questionIndex]['right_answer'];

    bool wasQuestionRight = selectedIndex == actualAnswer;

    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200,
            color:
                wasQuestionRight ? Colors.green.shade200 : Colors.red.shade500,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Resposta ${wasQuestionRight ? 'correta' : 'errada'}',
                    style: TextStyle(fontSize: 20),
                  ),
                  Divider(),
                  (!wasQuestionRight)
                      ? Container(
                          margin: EdgeInsets.all(10),
                          child: Text(
                            "Resposta correta: " +
                                widget.questions[questionIndex - 1]['answers']
                                    .where((element) =>
                                        element['value'] == actualAnswer)
                                    .toList()[0]['prompt']
                                    .toString()
                                    .trim(),
                            style: TextStyle(fontSize: 18),
                          ),
                        )
                      : SizedBox(),
                  ElevatedButton(
                    child: const Text('Próxima questão'),
                    onPressed: () => Navigator.pop(context),
                  )
                ],
              ),
            ),
          );
        });
    setState(() {
      if (selectedIndex == widget.questions[questionIndex]['right_answer']) {
        rightAnswers += 1;
      } else {
        wrongAnswers += 1;
      }
      selectedIndex = "";
      questionIndex += 1;
    });
    if (questionIndex >= (widget.questions as List).length) {
      _timer.cancel();
    }
  }

  late Timer _timer;
  int _start = 0;

  void startTimer() {
    const oneSec = const Duration(minutes: 0, seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == -1) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start++;
          });
        }
      },
    );
  }

  // restartGame() {
  //   questionIndex = 0;
  //   rightAnswers = 0;
  //   wrongAnswers = 0;
  //   selectedIndex = "";
  //   _start = 0;
  //   startTimer();
  // }

  restartGame() {
    List<dynamic> all_questions;
    if (widget.categoryName == "Todas questões") {
      all_questions = DUMMY_QUESTIONS
          .where((element) => element['right_answer'] != 'x')
          .toList();
    } else {
      all_questions = DUMMY_QUESTIONS
          .where((element) =>
              element['category'].toString() == widget.categoryName &&
              element['right_answer'] != 'x')
          .toList();
    }

    if (all_questions.length != 0) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => GameScreen(
            categoryName: widget.categoryName,
            questions: all_questions,
          ),
        ),
      );
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  formatDate(seconds) {
    int hours = (seconds / 3600).floor();
    seconds = seconds - 3600 * hours;
    int minutes = (seconds / 60).floor();
    seconds = seconds - 60 * minutes;

    String time = "";
    if (hours < 10) {
      time += "0";
    }
    time += hours.toString() + ":";
    if (minutes < 10) {
      time += "0";
    }
    time += minutes.toString() + ":";
    if (seconds < 10) {
      time += "0";
    }
    time += seconds.toString();

    return time;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade800,
        title: Text(widget.categoryName, style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: questionIndex < (widget.questions as List).length
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 80,
                          width: 100,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(color: Colors.black38, width: 2),
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            "${questionIndex + 1}/${widget.questions.length}",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 80,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(color: Colors.black38, width: 2),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "${formatDate(_start)}",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          width: 90,
                          height: 80,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.yellow.shade100,
                              border:
                                  Border.all(color: Colors.black38, width: 2),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.where_to_vote,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "${rightAnswers}",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.cancel,
                                    color: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "${wrongAnswers}",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    Container(
                      width: double.infinity,
                      child: Card(
                        shadowColor: Colors.teal,
                        elevation: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title: Text(
                              "${(widget.questions[questionIndex]['question'] as String).trim()}:",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ),
                    ...(widget.questions[questionIndex]['answers']
                            as List<Map<String, String>>)
                        .map((answer) => InkWell(
                              splashColor: Colors.green.shade300,
                              onTap: () => selectAnswer(answer['value']),
                              child: Container(
                                width: double.infinity,
                                child: Card(
                                  color: answer["value"] == selectedIndex
                                      ? Colors.green
                                      : Colors.white,
                                  child: ListTile(
                                    title: Text(
                                      "${answer['value']?.toUpperCase()}) ${answer['prompt']?.trim()}",
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                              ),
                            )),
                    Divider(),
                    ElevatedButton(
                      style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(15)),
                          backgroundColor: MaterialStateProperty.all(
                              selectedIndex == ""
                                  ? Colors.grey
                                  : Colors.amber.shade500)),
                      onPressed: selectedIndex == "" ? null : skipQuestion,
                      child: Text(
                        'Confirmar',
                        style: TextStyle(
                            fontSize: 20,
                            color: selectedIndex == ""
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ],
                )
              : Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              'Resultado',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 30),
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.where_to_vote,
                                        color: Colors.green,
                                        size: 50,
                                      ),
                                      Text(
                                        rightAnswers.toString(),
                                        style: TextStyle(fontSize: 28),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.cancel,
                                        color: Colors.red,
                                        size: 50,
                                      ),
                                      Text(
                                        wrongAnswers.toString(),
                                        style: TextStyle(fontSize: 28),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Divider(),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'QUESTÕES:',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  widget.categoryName.toUpperCase(),
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'TEMPO:',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  formatDate(_start),
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      ElevatedButton(
                        style: ButtonStyle(
                            padding:
                                MaterialStateProperty.all(EdgeInsets.all(15)),
                            backgroundColor: MaterialStateProperty.all(
                                Colors.amber.shade500)),
                        onPressed: restartGame,
                        child: Text(
                          'Refazer questões',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      Divider(),
                      ElevatedButton(
                        style: ButtonStyle(
                            padding:
                                MaterialStateProperty.all(EdgeInsets.all(15)),
                            backgroundColor: MaterialStateProperty.all(
                                Colors.amber.shade500)),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Trocar categoria',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      Divider(),
                      ElevatedButton(
                        style: ButtonStyle(
                            padding:
                                MaterialStateProperty.all(EdgeInsets.all(15)),
                            backgroundColor: MaterialStateProperty.all(
                                Colors.amber.shade500)),
                        onPressed: () => Navigator.popUntil(
                          context,
                          ModalRoute.withName('/'),
                        ),
                        child: Text(
                          'Menu principal',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
