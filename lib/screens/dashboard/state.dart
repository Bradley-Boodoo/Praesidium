abstract class DashboardState {}

class DashboardLoadingState extends DashboardState{}

class DashboardSuccessState extends DashboardState{
  final Map<String, dynamic> data;
  DashboardSuccessState(this.data);

}

class DashboardFailureState extends DashboardState{
  final String message;
  DashboardFailureState(this.message);
}

