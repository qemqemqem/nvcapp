import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OFNR App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OFNRPage(title: 'OFNR'),
    );
  }
}

class OFNRPage extends StatefulWidget {
  const OFNRPage({super.key, required this.title});

  final String title;

  @override
  State<OFNRPage> createState() => _OFNRPageState();
}

class _OFNRPageState extends State<OFNRPage> {
  String observation = '';
  String feeling = '';
  String need = '';
  String request = '';

  void _submitOFNR() {
// Implement logic for submitting OFNR data
// Could send to server or save locally, etc.
// For now, just print to console for debugging purposes
    print('Observation: $observation');
    print('Feeling: $feeling');
    print('Need: $need');
    print('Request: $request');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Observation',
                ),
                onChanged: (value) {
                  setState(() {
                    observation = value;
                  });
                },
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Feeling',
                ),
                onChanged: (value) {
                  setState(() {
                    feeling = value;
                  });
                },
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Need',
                ),
                onChanged: (value) {
                  setState(() {
                    need = value;
                  });
                },
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Request',
                ),
                onChanged: (value) {
                  setState(() {
                    request = value;
                  });
                },
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: _submitOFNR,
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
