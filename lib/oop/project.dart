import 'dart:convert';

import 'package:http/http.dart' as http;

import 'project_stage.dart';

class Project {
  List<ProjectStage> _stages = [];

  List<dynamic> projectsList = [];

  Future<void> fetchProjects() async {
    var url = Uri.parse('');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final decoded = jsonDecode(response.body);
        projectsList = List.from(decoded);
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e.toString());
    }
  }

  void addProjectStage(ProjectStage stage) {
    _stages.add(stage);
  }

  void removeProjectStage(ProjectStage stage) {
    _stages.remove(stage);
  }
}
