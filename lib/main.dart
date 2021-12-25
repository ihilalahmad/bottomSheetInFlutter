import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bottom Sheet'),
        ),
        body: Builder(
          builder: (context) =>
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext mContext) {
                        return Container(
                          child: Wrap(
                            children: [
                              new ListTile(
                                leading: Icon(Icons.home),
                                title: Text('Home'),
                              ),
                              new ListTile(
                                leading: Icon(Icons.bookmarks),
                                title: Text('Bookmarks'),
                              ),
                              new ListTile(
                                leading: Icon(Icons.settings),
                                title: Text('Settings'),
                              ),
                              new ListTile(
                                leading: Icon(Icons.logout),
                                title: Text('Logout'),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Text('Show Bottom Sheet'),
                ),
              ),
        ),
      ),
    );
  }
}



