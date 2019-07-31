import 'package:flutter/material.dart';

class UsingStepper extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new UsingStepperState();
  }
}

class UsingStepperState extends State<UsingStepper> {
  int current_step = 0;
  List<Step> mySteps = [
    new Step(
        title: new Text("Step 1"), content: new Text("Hello"), isActive: true),
    new Step(
        title: new Text("Step 2"),
        content: new Text("World"),
        isActive: true,
        state: StepState.editing),
    new Step(
        title: new Text("Step 3"),
        content: new Text("Hello World"),
        isActive: true)
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("UsingStepper"),
      ),
      body: new Container(
        child: new Stepper(
          currentStep: current_step,
          steps: mySteps,
          type: StepperType.vertical,
          onStepTapped: (step) {
            setState(() {
              current_step = step;
            });
          },
          onStepCancel: () {
            setState(() {
              if (current_step > 0) {
                current_step--;
              } else {
                current_step = 0;
              }
            });
          },

          onStepContinue: () {
            setState(() {
              if (current_step < mySteps.length - 1) {
                current_step++;
              } else {
                current_step = 0;
              }
            });
          },
        ),
      ),
    );
  }
}
