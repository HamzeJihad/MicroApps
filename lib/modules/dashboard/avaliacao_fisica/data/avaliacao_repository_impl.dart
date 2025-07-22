import 'package:micro_front_ends/modules/dashboard/avaliacao_fisica/domain/avaliacao_repository.dart';

import 'avaliacao_data_source.dart';

class AvaliacaoRepositoryImpl implements AvaliacaoRepository {
  final AvaliacaoDataSource dataSource;

  AvaliacaoRepositoryImpl(this.dataSource);

  @override
  Future<String> getUltimaAvaliacao() {
    return dataSource.getInfo();
  }
}
