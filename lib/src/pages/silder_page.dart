import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top:50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(
              child:  _crearImagen(),
            ),
           
          ],
        ),
      ),
      
    );
  }

  Widget _crearSwitch(){
      return SwitchListTile(
      title: Text('Bloquear slider'),
      value:_bloquearCheck,
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;
        });
       
      },
    );

  }
  Widget _checkBox(){

    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value:_bloquearCheck,
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;
        });
       
      },
    );
    
  }

  Widget _crearImagen(){
    return Image(
      image: NetworkImage('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/9eb92786-5e60-46ac-ae2c-d33af137f691/dd70iuy-b868f020-eb24-4be6-8d12-4b85ff01fcad.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvOWViOTI3ODYtNWU2MC00NmFjLWFlMmMtZDMzYWYxMzdmNjkxXC9kZDcwaXV5LWI4NjhmMDIwLWViMjQtNGJlNi04ZDEyLTRiODVmZjAxZmNhZC5wbmcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6ZmlsZS5kb3dubG9hZCJdfQ.ku11JB8iqX_8z4UFOxLdAG7rQIJhnsV2Vs6xXBcGBFk'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearSlider(){

    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max:400.0,
      onChanged: (_bloquearCheck ) ? null : (valor){

        setState(() {
           _valorSlider = valor;
        });
       
      },
    );

  }
}