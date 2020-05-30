import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child:  CircleAvatar(
              backgroundImage: NetworkImage('https://cdn11.bigcommerce.com/s-balh3740/images/stencil/1280x1280/products/21600/27231/lady_gaga_MH_2017__10753.1487179322.jpg?c=2?imbypass=on'),
              radius: 25.0,
            ),
          ),

          Container(
           margin: EdgeInsets.only(right:10.0),
           child: CircleAvatar(
             child:Text('SL'),
             backgroundColor: Colors.brown,
           ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://cdn.capitalradio.es/embed/5afec78ab33e141a33c6ba6874220d51552416141/2017-02-06T141604Z_1_MTZGRQED26YIB6CT_RTRFIPP_0_NFL-SUPERBOWL.jpg?imagick=1&size=1250'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds:200),
        ),
      ),
    );
  }
}