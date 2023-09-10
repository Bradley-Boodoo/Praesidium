import 'package:praesidium/oop/project.dart';

class PraesidiumApi{
  Future<dynamic> getDashboard() async{
    await Future.delayed(const Duration(seconds: 2));

    return <String, dynamic>{
      "dashboard_card": [
        {
          "panel_title": "Completed",
          "panel_value": "20"
        },
        {
          "panel_title": "In Progress",
          "panel_value": "20"
        },
        {
          "panel_title": "Blocked Projects",
          "panel_value": "20"
        },
      ],
      "tasks_completed":[
        {
          "key": 1,
          "value": 10
        },
        {
          "key": 2,
          "value": 23
        },
        {
          "key": 3,
          "value": 34
        },
        {
          "key": 4,
          "value": 12
        },
        {
          "key": 5,
          "value": 40
        },
      ]
    };
  }
}