import 'package:micro_front_ends/modules/dashboard/treinos/domain/treinos_repository.dart';

import 'treinos_data_source.dart';

class TreinosRepositoryImpl implements TreinosRepository {
  final TreinosDataSource dataSource;

  TreinosRepositoryImpl(this.dataSource);

  @override
  Future<List<String>> fetchTreinos() {
    return dataSource.getTreinos();
  }
}
