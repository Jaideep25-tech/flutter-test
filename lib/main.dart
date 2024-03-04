import 'package:connou_test/buisnes_logic/handler/counter.dart';
import 'package:connou_test/data/models/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// The main function that launches the Counter App.
void main() {
  // Run the Counter App by creating an instance of the MyApp class.
  runApp(const MyApp());
}

/// The main class of the Counter App, which extends [StatelessWidget].
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// The build method that creates the root element of the application.
  @override
  Widget build(BuildContext context) {
    /// Returns MaterialApp, the top-level container for the entire Counter App.
    return MaterialApp(
      // Configures the home screen with a BlocProvider as the parent widget.
      home: BlocProvider(
        // Initializes CounterHandler as the Bloc responsible for managing the counter state.
        create: (context) => CounterHandler(),
        // The main screen of the Counter App.
        child: const MyHomePage(),
      ),
    );
  }
}

/// The main page of the Counter App, responsible for displaying the counter and handling user interactions.
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  /// The build method that creates the UI structure of the main page.
  @override
  Widget build(BuildContext context) {
    /// Accesses the CounterHandler from the BlocProvider to manage the counter state.
    final CounterHandler counterCubit =
        BlocProvider.of<CounterHandler>(context);

    /// Returns the Scaffold widget, a basic material design visual structure, for the main page.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App by Connou UG'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// BlocBuilder widget displaying the current state of the counter.
            BlocBuilder<CounterHandler, Counter>(
              builder: (context, state) {
                // Determine text color based on whether the counter is positive.
                Color? color;
                if (state.isPositive) {
                  color = Colors.green;
                } else if (state.isNegative) {
                  color = Colors.red;
                }
                // Display the count with styling.
                return Text(
                  'Count: ${state.count}',
                  style: TextStyle(
                    fontSize: 24,
                    color: color,
                  ),
                );
              },
            ),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                /// Button to increment the counter when pressed.
                ElevatedButton(
                  onPressed: () => counterCubit.increment(),
                  child: const Text('Increment'),
                ),

                /// Button to decrement the counter when pressed.
                ElevatedButton(
                  onPressed: () => counterCubit.decrement(),
                  child: const Text('Decrement'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
