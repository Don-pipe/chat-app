import 'package:yesnoapp/domain/entities/message.dart';
import 'package:yesnoapp/infrastructure/models/api_model.dart';
import 'package:dio/dio.dart';

class getApiAnswer {
  final _dio = Dio();
  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');
    final apiModel = ApiModel.fromJsonMap(response.data);
    return apiModel.toMessaEntity();
  }
}
