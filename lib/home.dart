import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moru_weather_app/weather_bloc/weather_bloc.dart';
import 'package:moru_weather_app/weather_bloc/weather_event.dart';
import 'package:moru_weather_app/weather_bloc/weather_state.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final weatherBloc = WeatherBloc();
    final weatherController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('"We show weather for you"'),
        centerTitle: true,
      ),
      body: BlocBuilder<WeatherBloc, WeatherState>(
        bloc: weatherBloc,
        builder: (context, state) {
          return Column(
              children: [
                Center(
                  child: TextFormField(
                    controller: weatherController,
                    decoration: const InputDecoration(
                        contentPadding:EdgeInsets.only(left: 15),
                        hintText: 'City'),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      weatherBloc
                          .add(FetchWeatherEvent(weatherController.text.trim()));
                    },
                    child: const Text('Fetch data')),
                state is WeatherLoadingState
                    ? const CircularProgressIndicator()
                    : state is WeatherLoadedState
                    ? Text(state.weatherData.main!.temp.toString())
                        : state is WeatherLoadingFailureState
                            ? Text(state.error)
                            : const SizedBox.shrink(),
                state is WeatherLoadingState
                    ? const CircularProgressIndicator()
                    : state is WeatherLoadedState
                    ? Text(state.weatherData!.weather!.toString())
                    : state is WeatherLoadingFailureState
                    ? Text(state.error)
                    : const SizedBox.shrink()
              ],

          );
        },
      ),
    );
  }
}
