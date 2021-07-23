import 'package:api_buider_1_dummy/Dummy_apy_orderStatus/OrderSatusCaller.dart';
import 'package:api_buider_1_dummy/Dummy_apy_orderStatus/Order_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class OrderStatus_tile extends StatefulWidget {
  @override
  _OrderStatus_tileState createState() => _OrderStatus_tileState();
}

class _OrderStatus_tileState extends State<OrderStatus_tile> {

  Future<OrderStatusModel>_NewData;
  @override
  void initState(){
    _NewData =OrderStatus_Caller().OrderStatus_api();
    super.initState();
    //url:'UpdatedAprticle.urlToImage';
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<OrderStatusModel>(

        future: _NewData,
        builder: (context,snapshot)
        {if(snapshot.hasData){
          return ListWheelScrollView(
            itemExtent: 200.0,
            children: snapshot.data.articles.map((e) {
              var UpdatedAprticle=e;//snapshot.data.articles[index];
              return Container(
                  child:
                  Card(

                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(

                        borderRadius: BorderRadius.only(

                          topLeft: Radius.circular(60.0),
                          topRight: Radius.circular(60.0),
                          bottomLeft: Radius.circular(60.0),
                          bottomRight: Radius.circular(60.0),
                        ),
                      ), child: AspectRatio(aspectRatio:1,
                    child:Image.network(UpdatedAprticle.urlToImage,fit: BoxFit.cover,),))
              );
            }).toList(),

          );


        }
        else return


            Center(
              child: SpinKitChasingDots(
                color: Colors.yellowAccent,
                size: 150.0,
              ),
            );
        },


      ),



    );
  }
}

