import 'project_stage_task.dart';

class ProjectStage {
  int stageID;
  String stageName;
  int stageRisk;

  ProjectStage(this.stageID, this.stageName, this.stageRisk);

  List<ProjectStageTask> _tasks = [];

  void addProjectTask(ProjectStageTask task) {
    _tasks.add(task);
  }

  void removeProjectTask(ProjectStageTask task) {
    _tasks.remove(task);
  }
}
