// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/local/repository/hive_task_repository.dart' as _i7;
import '../domain/repository/task_repository.dart' as _i4;
import '../domain/service/task_service.dart' as _i3;
import '../ui/page/add_task/cubit/add_task_cubit.dart' as _i5;
import '../ui/page/task_list/cubit/task_list_cubit.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.TaskService>(
      () => _i3.TaskService(get<_i4.TaskRepository>()),
      dispose: (i) => i.dispose());
  gh.factory<_i5.AddTaskCubit>(() => _i5.AddTaskCubit(get<_i3.TaskService>()));
  gh.lazySingleton<_i6.TaskListCubit>(
      () => _i6.TaskListCubit(get<_i3.TaskService>()),
      dispose: (i) => i.close());
  gh.singletonAsync<_i4.TaskRepository>(
      () => _i7.HiveTaskRepository.initAndCreate(),
      dispose: (i) => i.close());
  return get;
}
