import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    localizationsDelegates: [
      DefaultMaterialLocalizations.delegate,
      DefaultWidgetsLocalizations.delegate,
      // Add more delegates if necessary
    ],
    home: test1(), // or any other initial route you want to use
  ));
}

class test1 extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<test1> {
  List<Question> questions = [
    Question(
      'int x=__',
      ['2', 'hello', '2.14', 'a'],
      '2', // Correct answer
    ),
    Question(
      '__y="hello"',
      ['int', 'String', 'float', 'char'],
      'String',
    ),
    Question(
      '__z=2.14',
      ['int', 'String', 'float', 'char'],
      'float',
    ),
    Question(
      'String x=__',
      ['String', '2.14', 'a', '"String"'],
      '"String"', // Correct answer
    ),
    Question(
      'int x=2.14',
      ['True', 'False'],
      'False', // Correct answer
    ),
    Question(
      'String x="hello world"',
      ['True', 'False'],
      'True', // Correct answer
    ),
    Question(
      'String x="hello world"',
      ['True', 'False'],
      'True', // Correct answer
    ),
    Question(
      'The type of data can be stored in the variable',
      ['True', 'False'],
      'True', // Correct answer
    ),
    Question(
      'Range of Byte is from -64 to 64',
      ['True', 'False'],
      'False', // Correct answer
    ),
    Question(
      'Variable Declaration: Datatype Variable_name = Value ',
      ['True', 'False'],
      'True', // Correct answer
    ),
  ];

  int questionIndex = 0;
  int score = 0;
  int totalMarks = 0;
  Stopwatch stopwatch = Stopwatch(); // Timer to track time

  void startTimer() {
    stopwatch.start();
  }

  void stopTimer() {
    stopwatch.stop();
  }

  void answerQuestion(String selectedAnswer) {
    setState(() {
      if (selectedAnswer == questions[questionIndex].correctAnswer) {
        score++;
      }
      totalMarks++;
      if (questionIndex < questions.length - 1) {
        if (selectedAnswer.isNotEmpty) {
          // Move to the next question
          questionIndex++;
        } else {
          // Show a dialog if no option is selected
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Select an Answer'),
                content: Text('Please select an answer before proceeding.'),
                actions: <Widget>[
                  TextButton(
                    child: Text('OK'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        }
      } else {
        stopTimer(); // Stop timer when quiz is finished
        // Show score dialog with time taken
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Quiz Finished'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('Your score is $score out of ${questions.length}.'),
                  Text(
                    'Time taken: ${stopwatch.elapsed.inSeconds} seconds.',
                  ), // Display time taken
                ],
              ),
              actions: <Widget>[
                TextButton(
                  child: Text('Restart Quiz'),
                  onPressed: () {
                    // Reset quiz and timer
                    setState(() {
                      questionIndex = 0;
                      score = 0;
                      totalMarks = 0;
                      stopwatch.reset();
                      startTimer();
                    });
                    Navigator.of(context).pop(); // Close the dialog
                  },
                ),
              ],
            );
          },
        );
      }
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer(); // Start timer when quiz page is initialized
  }

  @override
  void dispose() {
    stopwatch.stop(); // Stop timer when widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                questions[questionIndex].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: questions[questionIndex].options.map((option) {
                return ElevatedButton(
                  onPressed: () => answerQuestion(option),
                  child: Text(option),
                );
              }).toList(),
            ),
            SizedBox(height: 300),
            // Ensure the buttons are placed at the bottom
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (questionIndex > 0)
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        questionIndex--;
                      });
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                if (questionIndex < questions.length - 1)
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        questionIndex++;
                      });
                    },
                    child: Icon(Icons.arrow_forward),
                  ),
                if (questionIndex == questions.length - 1)
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Quiz Finished'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                    'Your score is $score out of ${questions.length}.'),
                                Text(
                                    'Time taken: ${stopwatch.elapsed.inSeconds} seconds.'),
                              ],
                            ),
                            actions: <Widget>[
                              TextButton(
                                child: Text('Restart Quiz'),
                                onPressed: () {
                                  // Reset quiz and timer
                                  setState(() {
                                    questionIndex = 0;
                                    score = 0;
                                    totalMarks = 0;
                                    stopwatch.reset(); // Reset the stopwatch
                                    startTimer(); // Start the timer again
                                  });
                                  Navigator.of(context).pop(); // Close the dialog
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text('Submit'),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Question {
  String questionText;
  List<String> options;
  String correctAnswer;

  Question(this.questionText, this.options, this.correctAnswer);
}
