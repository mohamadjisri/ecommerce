import 'package:ecommerce/core/class/statusrequest.dart';

handlingData(response) {
  if (response is StatusRequest) {
    if (response == StatusRequest.offlinefailure) {
      return response;
    } else {
      return StatusRequest.success;
    }
  }
}
