import 'package:conversormoedas/app/core/domain/entities/history_send_entity.dart';
import 'package:conversormoedas/app/core/domain/usecases/create_item_usecase.dart';
import 'package:conversormoedas/app/core/domain/usecases/get_itens_usecase.dart';
import 'package:conversormoedas/app/modules/home/presenters/home/home_store.dart';
import 'package:conversormoedas/shared/helpers/app_routes_helpers.dart';
import 'package:conversormoedas/shared/helpers/navigation_helpers.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:share_plus/share_plus.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final ICreateItemUsecase createItemUsecase;
  final IGetItensUsecase getItensUsecase;
  final HomeStore homeStore = HomeStore();

  _HomeControllerBase(this.createItemUsecase, this.getItensUsecase);

  Future<void> createItem() async {
  NavigationHelper.pushNamedAndRemoveUntil(AppRoutesHelper.historico);
  }

  Future<void> converser() async {
    final dolar = homeStore.valor!  / 4.90  ;
    homeStore.setdolar(dolar);
     final euro = homeStore.valor! * 5.93 ;
    homeStore.seteuro(euro);
     final item = HistorySendEntity(
        valor: homeStore.valor!, 
        dolar: homeStore.dolar!, 
        euro: homeStore.euro!);
    await createItemUsecase.call(item);
   
  }
   onShare(BuildContext context) async {
    final box = context.findRenderObject() as RenderBox?;
    final String text ='Valor: ${homeStore.valor.toString()} - Dolar: ${homeStore.dolar.toString()} - Euro: ${homeStore.euro.toString()}';
    Share.share(text,
     subject: homeStore.valor.toString(),
     sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
  }
}
