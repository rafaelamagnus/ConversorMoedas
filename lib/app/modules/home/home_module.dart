import 'package:conversormoedas/app/core/domain/repositories/home_repository.dart';
import 'package:conversormoedas/app/core/domain/usecases/create_item_usecase.dart';
import 'package:conversormoedas/app/core/domain/usecases/get_itens_usecase.dart';
import 'package:conversormoedas/app/core/external/datasources/home_datasource.dart';
import 'package:conversormoedas/app/core/infra/datasources/home_datasource.dart';
import 'package:conversormoedas/app/core/infra/repositories/home_repository.dart';
import 'package:conversormoedas/app/modules/home/presenters/history/history_controller.dart';
import 'package:conversormoedas/app/modules/home/presenters/history/history_page.dart';
import 'package:conversormoedas/app/modules/home/presenters/history/history_store.dart';
import 'package:conversormoedas/app/modules/home/presenters/home/home_controller.dart';
import 'package:conversormoedas/app/modules/home/presenters/home/home_page.dart';
import 'package:conversormoedas/app/modules/home/presenters/home/home_store.dart';
import 'package:conversormoedas/shared/helpers/app_routes_helpers.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    //Controllers and Stores
    Bind.lazySingleton((i) => HomeStore()),
    Bind.lazySingleton<HistoryStore>((i) => HistoryStore()),
    Bind.lazySingleton((i) => HomeController(i.get<ICreateItemUsecase>(),i.get<IGetItensUsecase>())),
    Bind.lazySingleton((i) => HistoryController(i.get<IGetItensUsecase>())),
    Bind.lazySingleton<ICreateItemUsecase>((i) => CreateItemUsecase(i.get<IHomeRepository>())),
    Bind.lazySingleton<IGetItensUsecase>((i) => GetItensUsecase(i.get<IHomeRepository>())),

    //Repositories
    Bind.lazySingleton<IHomeRepository>((i) => HomeRepository(i.get<IHomeDatasouce>())),

    //Datasources
    Bind.lazySingleton<IHomeDatasouce>((i) => HomeDatasource()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const HomePage()),
    ChildRoute(AppRoutesHelper.historico, child: (_, args) => const HistoryPage()),
  ];
}
