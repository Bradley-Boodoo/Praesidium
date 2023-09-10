import 'package:bloc/bloc.dart';

import '../../utilities/api.dart';
import 'event.dart';
import 'state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final PraesidiumApi _api = PraesidiumApi();

  DashboardBloc() : super(DashboardLoadingState()) {
    on<InitEvent>(_init);
  }

  void _init(InitEvent event, Emitter<DashboardState> emit) async {
    emit(DashboardLoadingState());

    final data = await _api.getDashboard();
    emit(DashboardSuccessState(data));

  }
}
