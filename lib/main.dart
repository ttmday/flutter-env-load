import 'package:flutter/material.dart';
import 'package:goghai/src/config/colors.dart';
import 'package:goghai/src/config/theme.dart';

void main() {
  const username = String.fromEnvironment("USERNAME");
  print("Username: $username");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const MyHomePage(title: 'Flutter Demo Enviroments'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 7.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Enviroments List',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(
              height: 14.0,
            ),
            const EnviromentValue(
              label: 'username',
              value: String.fromEnvironment("USERNAME"),
            ),
            const SizedBox(
              height: 7.0,
            ),
            const EnviromentValue(
              label: 'github',
              value: String.fromEnvironment("GITHUB"),
            ),
            const SizedBox(
              height: 7.0,
            ),
            const EnviromentValue(
              label: 'website',
              value: String.fromEnvironment("WEBSITE"),
            ),
          ],
        ),
      ),
    );
  }
}

class EnviromentValue extends StatelessWidget {
  const EnviromentValue({
    super.key,
    required this.label,
    required this.value,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: AppColors.tertiary,
          borderRadius: BorderRadius.all(Radius.circular(7.0))),
      padding: const EdgeInsets.all(7.0),
      child: Row(
        children: [
          Text(
              '${label[0].toUpperCase() + label.substring(1).toLowerCase()}: '),
          const SizedBox(
            width: 7.0,
          ),
          Text(
            value,
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}
