import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Pag1(),
    Pag2(), 
    Pag3(),
    Pag4(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica Componentes'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('RadioBut'),
              onTap: () {
                Navigator.of(context).pop(); // Cierra el Drawer
                _onItemTapped(0); // Cambia a la Página 1
              },
            ),
            ListTile(
              title: Text('CheckBox'),
              onTap: () {
                Navigator.of(context).pop(); // Cierra el Drawer
                _onItemTapped(1); // Cambia a la Página 2
              },
            ),
            ListTile(
              title: Text('ShowDateP'),
              onTap: () {
                Navigator.of(context).pop(); // Cierra el Drawer
                _onItemTapped(2); // Cambia a la Página 3
              },
            ),
             ListTile(
              title: Text('Forms y AlertDialog'),
              onTap: () {
                Navigator.of(context).pop(); // Cierra el Drawer
                _onItemTapped(3); // Cambia a la Página 4
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.cyanAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.radio_button_checked_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note_outlined),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.blueGrey,
        selectedItemColor: Colors.cyan,
        onTap: _onItemTapped,
      ),
    );
  }
}

class Pag1 extends StatefulWidget {
  @override
  _Pag1State createState() => _Pag1State();
}

class _Pag1State
    extends State<Pag1> {
  int? _selectedRadio;

  void _handleRadioValueChange(int? value) {
    setState(() {
      _selectedRadio = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text('Me Aprueba Profe? '),
          ),
          RadioListTile(
            value: 1,
            groupValue: _selectedRadio,
            onChanged: _handleRadioValueChange,
            title: Text('Si'),
          ),
          RadioListTile(
            value: 2,
            groupValue: _selectedRadio,
            onChanged: _handleRadioValueChange,
            title: Text("No'nt"),
          ),
          RadioListTile(
            value: 3,
            groupValue: _selectedRadio,
            onChanged: _handleRadioValueChange,
            title: Text('No pero si'),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(''),
                Text(''),
                Text('Después de revisar tu aplicación, he llegado a una conclusión inquebrantable: si la industria de'
                 'desarrollo de aplicaciones tuviera un premio al "Genio del Código", ¡tú estarías en la lista de nominados!'
                  'Tu aplicación es como una sinfonía de código bien afinado que Mozart aprobaría'
                  'y tu codigo esta tan Perro que ni Cesar Milan lo detiene'
                 ),
            ],
            ),
          )
        ],
      ),
    );
  }
}

class Pag2 extends StatefulWidget {
  @override
  _Pag2State createState() => _Pag2State();
}

class _Pag2State extends State<Pag2> {
  bool _checkBox2 = false;
  bool _checkBox3 = false;
  bool _checkBox4 = false;
  bool _checkBox5 = false;
  bool _checkBox6 = false;
  bool _checkBox7 = false;
  bool _checkBox8 = false;
  bool _checkBox9 = false;
  bool _checkBox10 = false;
  bool _checkBox11 = false;
  bool _checkBox12 = false;
   bool _checkBox13 = false;
  bool _checkBox14 = false;

  void _handleCheckBox2(bool? value) {
    setState(() {
      _checkBox2 = value!;
    });
  }

  void _handleCheckBox3(bool? value) {
    setState(() {
      _checkBox3 = value!;
    });
  }

  void _handleCheckBox4(bool? value) {
    setState(() {
      _checkBox4 = value!;
    });
  }

  void _handleCheckBox5(bool? value) {
    setState(() {
      _checkBox5 = value!;
    });
  }

  void _handleCheckBox6(bool? value) {
    setState(() {
      _checkBox6 = value!;
    });
  }

  void _handleCheckBox7(bool? value) {
    setState(() {
      _checkBox7 = value!;
    });
  }

  void _handleCheckBox8(bool? value) {
    setState(() {
      _checkBox8 = value!;
    });
  }

  void _handleCheckBox9(bool? value) {
    setState(() {
      _checkBox9 = value!;
    });
  }

  void _handleCheckBox10(bool? value) {
    setState(() {
      _checkBox10 = value!;
    });
  }

  void _handleCheckBox11(bool? value) {
    setState(() {
      _checkBox11 = value!;
    });
  }

  void _handleCheckBox12(bool? value) {
    setState(() {
      _checkBox12 = value!;
    });
  }
   void _handleCheckBox13(bool? value) {
    setState(() {
      _checkBox13 = value!;
    });
  }
   void _handleCheckBox14(bool? value) {
    setState(() {
      _checkBox14 = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text('que bandas conoces?'),
          ),
          Expanded(
            child: ListView(
              children: [
                CheckboxListTile(
                  title: Text('ACDC'),
                  value: _checkBox2,
                  onChanged: _handleCheckBox2,
                ),
                CheckboxListTile(
                  title: Text('Guns and Roses'),
                  value: _checkBox3,
                  onChanged: _handleCheckBox3,
                ),
                CheckboxListTile(
                  title: Text('Metallica'),
                  value: _checkBox4,
                  onChanged: _handleCheckBox4,
                ),
                CheckboxListTile(
                  title: Text('Led Zeppelling'),
                  value: _checkBox5,
                  onChanged: _handleCheckBox5,
                ),
                CheckboxListTile(
                  title: Text('Pantera'),
                  value: _checkBox6,
                  onChanged: _handleCheckBox6,
                ),
                CheckboxListTile(
                  title: Text('Three Days Grace'),
                  value: _checkBox7,
                  onChanged: _handleCheckBox7,
                ),
                CheckboxListTile(
                  title: Text('Tropicalisimo Apache'),
                  value: _checkBox8,
                  onChanged: _handleCheckBox8,
                ),
                CheckboxListTile(
                  title: Text('Aerosmith'),
                  value: _checkBox9,
                  onChanged: _handleCheckBox9,
                ),
                CheckboxListTile(
                  title: Text('Chicos que lloran'),
                  value: _checkBox10,
                  onChanged: _handleCheckBox10,
                ),
                CheckboxListTile(
                  title: Text('Motley Crue'),
                  value: _checkBox11,
                  onChanged: _handleCheckBox11,
                ),
                CheckboxListTile(
                  title: Text('Avenged Sevenfold'),
                  value: _checkBox12,
                  onChanged: _handleCheckBox12,
                ),
                CheckboxListTile(
                  title: Text('Dragon Force'),
                  value: _checkBox13,
                  onChanged: _handleCheckBox13,
                ),
                CheckboxListTile(
                  title: Text('Nirvana'),
                  value: _checkBox14,
                  onChanged: _handleCheckBox14,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Pag3 extends StatefulWidget {
  @override
  _Pag3State createState() => _Pag3State();
}

class _Pag3State extends State<Pag3> {
  DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text('Selecciona una fecha:'),
          ),
          ListTile(
            title: Text(
              '${_selectedDate.toLocal()}'.split(' ')[0],
              style: TextStyle(fontSize: 30),
            ),
            trailing: IconButton(
              icon: Icon(Icons.calendar_today),
              onPressed: () => _selectDate(context),
            ),
          ),
        ],
      ),
    );
  }
}

class Pag4 extends StatefulWidget {
  @override
  _Pag4State createState() => _Pag4State();
}

class _Pag4State extends State<Pag4> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ingresa Tu Nombre'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _textFieldController,
                decoration: InputDecoration(labelText: 'Meta su nombre aqui'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Este campo es obligatorio';
                  }
                  return null;
                },
              ),
              ElevatedButton(
               onPressed: () {
                  if (_formKey.currentState!.validate()) {
                   // El formulario es válido, procesa los datos aquí
                    final textoIngresado = _textFieldController.text;
                    // Muestra un AlertDialog
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Datos enviados'),
                          content: Text('Texto ingresado: $textoIngresado'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                // Cerrar el AlertDialog
                                Navigator.of(context).pop();
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
              child: Text('Enviar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
