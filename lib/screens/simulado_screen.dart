import 'dart:async';

import 'package:flutter/material.dart';
import 'package:async/async.dart';
import 'package:intl/intl.dart';
import 'package:simulado_detran/providers/dummy_questions.dart';

class SimuladoScreen extends StatefulWidget {
  static const routeName = '/simulado_screen';

  @override
  State<SimuladoScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<SimuladoScreen> {
  var questionIndex = 0;

  var rightAnswers = [];
  var wrongAnswers = [];
  var selectedIndex = "";

  var questions = simulateQuestions();

  static const category_list = [
    'Direção defensiva',
    'Legislação de trânsito',
    'Mecânica básica',
    'Medicina de tráfego',
    'Meio ambiente'
  ];

  bool isGameOn = true;

  selectAnswer(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  skipQuestion() {
    var actualAnswer = questions[questionIndex]['right_answer'];

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
                                questions[questionIndex - 1]['answers']
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
      if (selectedIndex == questions[questionIndex]['right_answer']) {
        rightAnswers.add(questions[questionIndex]);
      } else {
        wrongAnswers.add(questions[questionIndex]);
      }
      selectedIndex = "";
      questionIndex += 1;
    });
    if (questionIndex >= (questions as List).length) {
      _timer.cancel();
      isGameOn = false;
    }
  }

  late Timer _timer;
  int _start = 40 * 60;

  void startTimer() {
    const oneSec = const Duration(minutes: 0, seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            isGameOn = false;
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  restartGame() {
    _start = 40 * 60;
    isGameOn = true;
    questionIndex = 0;
    rightAnswers = [];
    wrongAnswers = [];
    selectedIndex = "";
    questions = simulateQuestions();
    startTimer();
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

  formatFinalDate(seconds) {
    var limit = 40 * 60;
    var time_to_finish = limit - _start;
    return formatDate(time_to_finish);
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
        title: Text('Simulado', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: isGameOn
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
                            "${questionIndex + 1}/${questions.length}",
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
                                    "${rightAnswers.length}",
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
                                    "${wrongAnswers.length}",
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
                              "${(questions[questionIndex]['question'] as String).trim()}:",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ),
                    ...(questions[questionIndex]['answers']
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
                                      style: TextStyle(fontSize: 17),
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
                        style: TextStyle(fontSize: 20, color: Colors.black),
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
                                        rightAnswers.length.toString(),
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
                                        wrongAnswers.length.toString(),
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
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    'PONTUAÇÃO POR CATEGORIA',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Divider(),
                                  ...category_list.map(
                                    (cat) => Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '${cat.toUpperCase()}:',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        Text(
                                          rightAnswers
                                                  .where((element) =>
                                                      element['category'] ==
                                                      cat)
                                                  .toList()
                                                  .length
                                                  .toString() +
                                              "/" +
                                              questions
                                                  .where((element) =>
                                                      element['category'] ==
                                                      cat)
                                                  .toList()
                                                  .length
                                                  .toString(),
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'TEMPO:',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  formatFinalDate(_start),
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
                        onPressed: () => Navigator.of(context)
                            .pushReplacementNamed(SimuladoScreen.routeName),
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
