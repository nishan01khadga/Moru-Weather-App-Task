import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moru_weather_app/home.dart';
import 'package:moru_weather_app/splash_screen/bloc_splash.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({super.key});


  _redirectToHome(BuildContext context){
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const HomePage()));
   // Navigator.of(context).pushNamedAndRemoveUntil("homePage", (route) => false);
  }
  String _displayClock(Time ? data){
    String retVal="";
    if(data!=null){
      retVal="Time:${data.hour}:${data.minute}:${data.second}";
    }
    return retVal;
  }

  @override
  Widget build(BuildContext context) {
    bool _redirected = false;
    SplashBloc _bloc = SplashBloc();
    _bloc.timerOnChange(StartTimer());
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text("We show weather for you",)
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        margin: EdgeInsets.all(10.0),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/moru background.png'),
            fit: BoxFit.cover,
          ),
        ),

        child:  GestureDetector(
          onTap: (){
             _bloc.timerOnChange(StopTimer());
             _redirectToHome(context);
            },

          child: StreamBuilder<TimeState>(
            stream: _bloc.timeStream,
            builder: (context, snapshot) {
              if (snapshot.hasData && (snapshot.data is RedirectState)) {
                if (!_redirected) {
                  _redirected = true;
                  WidgetsBinding.instance!.addPostFrameCallback((_) {
                    _redirectToHome(context);
                  });
                }
                return Container(); // or any other widget
              }
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        _redirectToHome(context);
                        },
                      child:
                      const Text(
                        "Skip",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.blue
                        ),
                      )
                  ),
                  // Text("We show weather for you",style:TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                  // Text(_displayClock(snapshot.data?.time)),
             ],
            ),
             );
            },
        ),
      ),
      ),
    );

  }
}

