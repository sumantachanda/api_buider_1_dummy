import 'dart:convert';

import 'package:api_buider_1_dummy/Dummy_apy_orderStatus/Order_models.dart';
import 'package:api_buider_1_dummy/Dummy_apy_orderStatus/Url_holder.dart';
import 'package:http/http.dart' as http;



class OrderStatus_Caller{

  Future<OrderStatusModel> OrderStatus_api() async{

    var Orderstatus_data=null;
    var OrderstatusClient=http.Client();
    var OrdderstatusResponce=await OrderstatusClient.get(Dummy_Strings.Dummy_url);

    if(OrdderstatusResponce.statusCode==200){
      var OrderStatus_JsonHolder=OrdderstatusResponce.body;
      var OrderstatusMapped=json.decode(OrderStatus_JsonHolder);
      Orderstatus_data=OrderStatusModel.fromJson(OrderstatusMapped);

    }
return Orderstatus_data;




  }

}


