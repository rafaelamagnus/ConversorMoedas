import 'package:conversormoedas/app/core/infra/datasources/home_datasource.dart';
import 'package:conversormoedas/app/core/infra/models/history_send_model.dart';
import 'package:conversormoedas/services/database_helper.dart';

class HomeDatasource implements IHomeDatasouce {
  DatabaseHelper con = DatabaseHelper();

  @override
  Future<int> createItem(HistorySendModel valor) async {
    var dbClient = await con.db;
    int res = await dbClient.insert('Moeda', valor.toJson());
    return res;
  }

  @override
  Future<List<Map<String, dynamic>>> getItens() async {
    final dbClient = await con.db;
    return dbClient.query('Moeda', orderBy: "id");
  }
}
