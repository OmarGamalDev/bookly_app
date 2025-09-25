import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
        Text('Welcome to the Home Page'),
        ElevatedButton(
          onPressed: () {
            // Navigate to another page
          },
          child: Text('Go to Details'),
        ),
      ],
    );
  }
}
