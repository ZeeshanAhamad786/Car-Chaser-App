import 'package:get/get.dart';

import '../widget/widgets.dart';


timeOutException({loading}) {
  Get.back();
  timeOutExceptionDialogBox();
  if (loading != null) loading.value = false;
}