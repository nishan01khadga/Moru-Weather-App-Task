import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:rxdart/rxdart.dart';

abstract class TimerEvent extends Equatable{
  const TimerEvent();
  @override
  List<Object> get props =>[];
}
class StartTimer extends TimerEvent{
  const StartTimer();
}
class StopTimer extends TimerEvent{
  const StopTimer();
}
class Time{
  final int hour;
  final int minute;
  final int second;
  Time(this.hour,this.minute,this.second);
}
class TimeState extends Equatable{
  final Time time;
  TimeState(this.time);
  @override
  List<Object>get props=>[time];
}
class RedirectState implements TimeState{
  final Time time;
  RedirectState(this.time);
  @override
  List<Object>get props=>[time];
  @override
  //TODO: implement stringify
bool?get stringify => throw UnimplementedError();

}

class TimerState extends Equatable{
  final bool started;
  const TimerState(this. started);
  @override
  List<Object>get props=>[started];
}

class SplashBloc{
  SplashBloc();
  Timer ? _timer;
  var countDown = 5;
  Stream<TimeState> get timeStream => _timeController.stream;
  final _timeController = BehaviorSubject<TimeState>();
  void dispose(){
    _timeController.close();
  }
  void _pushTimeOnTheStream(Timer timer){
    DateTime now = DateTime.now();
    _timeController.sink.add(TimeState(Time(now.hour,now.minute,now.second)));
    this.countDown-=1;
    if(this.countDown==0)
    {
      timerOnChange(StopTimer());
      _timeController.sink.add(RedirectState(Time(0,0,0)));
    }
  }
  void timerOnChange(TimerEvent event){
    if(event is StartTimer){
      _timer= Timer.periodic(Duration(seconds: 1),_pushTimeOnTheStream);

    }
    else if (event is StopTimer){
      //_timerController.sink.add(TimerState(false));
      _timer?.cancel();
    }
  }
}