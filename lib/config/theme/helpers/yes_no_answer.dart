import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/infraestructure/models/yesNoModel.dart';

class GetYesNoAnswer {
  final dio = Dio();


  Future<Message> getAwnser() async{
    final response = await dio.get('https://yesno.wtf/api');

    if (response.statusCode == 200){
      final yesNoModel = YesNoModel.fromJsonMap(response.data);
      return yesNoModel.toMessageEntity();
    }

    throw UnimplementedError();
  }

}