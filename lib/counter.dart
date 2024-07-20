import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     const SizedBox(
                      width: 20,
                    ),
                    const Icon(
                      Icons.settings_outlined,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(
                      Icons.security_update_warning_rounded,
                      color: Colors.white,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            count = 0;
                          });
                        },
                        child: const Icon(
                          Icons.replay_circle_filled_outlined,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              Text(
                "$count",
                style: const TextStyle(fontSize: 170, color: Colors.white),
              ),
              const Spacer(
                flex: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(20),
                      backgroundColor: Colors.transparent,
                      side: const BorderSide(color: Colors.white),
                      shape: const CircleBorder(),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        if (count > 0) {
                          count--;
                        }
                      });
                    },
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(20),
                      backgroundColor: Colors.transparent,
                      side: const BorderSide(color: Colors.white),
                      shape: const CircleBorder(),
                    ),
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
