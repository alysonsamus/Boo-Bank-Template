import 'package:boobank/pages/home/repository/i_cardbills_repository.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HttpController extends GetxController with StateMixin {

  final ICardbillsRepository _icardbillsRepository;
  HttpController(this._icardbillsRepository);

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    findBills();
  }

  Future<void> findBills() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await _icardbillsRepository.findAllBills();
      change(dados, status: RxStatus.success());
    } catch (e) {
      change([], status: RxStatus.error('Erro'));
    }
  }
}
