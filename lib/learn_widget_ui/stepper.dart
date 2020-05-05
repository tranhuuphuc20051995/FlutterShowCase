import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  @override
  _StepperWidgetState createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int _currentStep = 0;
  List<bool> listActiveOfStep = [false, false, false];

  @override
  Widget build(BuildContext context) {
    List<Step> listStep = initStep();
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Stepper"),
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stepper(
              onStepCancel: () {
                //Tap button cancel
                setState(() {
                  if (_currentStep > 0) {
                    listActiveOfStep[_currentStep] = false;
                    _currentStep = _currentStep - 1;
                  } else {
                    _currentStep = 0;
                    listActiveOfStep[_currentStep] = false;
                  }
                });
              },
              onStepContinue: () {
                //Tap button continue
                setState(() {
                  if (_currentStep < listStep.length - 1) {
                    listActiveOfStep[_currentStep] = true;
                    _currentStep = _currentStep + 1;
                  }
                });
              },
              onStepTapped: (step) {
                //Tapped to step
              },
              physics: ClampingScrollPhysics(),
              steps: listStep,
              currentStep: _currentStep,
              type: StepperType.horizontal,
            ),
          )),
    );
  }

  List<Step> initStep() {
    List<Step> step = [
      Step(
        title: Text("Step 1:"),
        subtitle: Text(
          "Login",
        ),
        content: Text(
          "Content Step 1",
        ),
        isActive: listActiveOfStep[0],
        state: StepState.indexed,
      ),
      Step(
        title: Text("Step 2:"),
        subtitle: Text(
          "Login",
        ),
        content: Text(
          "Content Step 2",
        ),
        isActive: listActiveOfStep[1],
        state: StepState.indexed,
      ),
      Step(
        title: Text("Step 3:"),
        subtitle: Text(
          "Login",
        ),
        content: Text(
          "Content Step 3",
        ),
        isActive: listActiveOfStep[2],
        state: StepState.indexed,
      ),
    ];
    return step;
  }
}
