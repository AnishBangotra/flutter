import 'package:flutter/material.dart';
import 'package:planner/screens/add_task_screen.dart';

class PlannerScreen extends StatefulWidget {
  @override
  _PlannerScreenState createState() => _PlannerScreenState();
}

class _PlannerScreenState extends State<PlannerScreen> {
  Widget _buildTask(int index) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(children: <Widget>[
          ListTile(
            title: Text('Task Title'),
            subtitle: Text('Oct 2, 2020 - High'),
            trailing: Checkbox(
              onChanged: (value) {
                print(value);
              },
              activeColor: Theme.of(context).primaryColor,
              value: true,
            ),
          ),
          Divider()
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Padding(
              padding: const EdgeInsets.only(left: 22.0),
              child: const Text('My Tasks',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ))),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 120,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(Icons.add),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (_) => AddTaskScreen())),
        ),
        body: ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        //SizedBox(height: 10.0),
                        Text('Recent tasks',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600)),
                      ]),
                );
              }
              return _buildTask(index);
            }));
  }
}
