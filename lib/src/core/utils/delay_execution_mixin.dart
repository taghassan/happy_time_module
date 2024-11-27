import 'dart:async';

mixin DelayExecutionMixin{
  Timer? debounce;
  bool autoExecute=true;
  int delayInSec=2;

  delayExecutionDispose(){
    debounce?.cancel();
  }

  delayExecution({required Function callBack}) {
    if (!autoExecute) return null;
    // If a timer is already running, cancel it
    if (debounce?.isActive ?? false) {
      debounce?.cancel();
    }

    // Start a new timer
    debounce = Timer( Duration(seconds: delayInSec), () {
      // Execute the search function after 2 seconds of inactivity
      callBack();
    });

    return null;
  }

}
