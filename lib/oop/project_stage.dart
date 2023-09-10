import 'project_stage_task.dart';
import 'stage.dart';

class ProjectStage extends Stage {
  int projectID;
  // int stageRisk;

  ProjectStage({
    required this.projectID,
    required int stageID,
    required String stageName,
  }) : super(stageID: stageID, stageName: stageName);

  List<ProjectStageTask> _tasks = [];

  void addProjectTask(ProjectStageTask task) {
    _tasks.add(task);
  }

  void removeProjectTask(ProjectStageTask task) {
    _tasks.remove(task);
  }
}
