import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_gesture_back_disable_text_field_input/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: route,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: const Center(
                    child: Text(
                      'You are on the home page.',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    const Expanded(
                      child: TextField(
                        autofocus: true,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          const DetailPageRoute().go(context);
                        },
                        child: const Icon(Icons.send))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: const Center(
                    child: Text(
                      'You are on the detail page.',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    ElevatedButton(onPressed: () {}, child: const Icon(Icons.arrow_back_ios)),
                    const SizedBox(
                      width: 12,
                    ),
                    const Expanded(
                      child: TextField(
                        autofocus: true,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
