import 'package:chegou_a_feira/barra.dart';
import 'package:chegou_a_feira/destaques.dart';
import 'package:chegou_a_feira/login.dart';
import 'package:chegou_a_feira/carrinho.dart';
import 'package:chegou_a_feira/minhaconta.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 176, 39, 69),
              iconTheme: IconThemeData(
                color: Colors.white
              ),
        
        actions: [
          login(),
          SizedBox(width: 18,),
          cadastro(),
          SizedBox(width: 10,),
        ]
      ),
            drawer: Drawer(
        
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 176, 39, 69),
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        child: Text('perfil', style: TextStyle(fontSize: 15),),
            radius: 30,
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
                      ),
                      Text(
                        'Nome',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        'E-mail',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
            ListTile(
              minTileHeight: 30,
              leading: Icon(Icons.person, color: Colors.blue,),
              title: Text('Minha Conta'),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Conta()),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),
            ListTile(
              minTileHeight: 30,
              leading: Icon(Icons.star, color: Colors.purple,),
              title: Text('DESTAQUES'),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Destaques()),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),
            ListTile(
              minTileHeight: 30,
              leading: Icon(Icons.local_bar, color: Colors.black,),
              title: Text('BEBIDAS'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),
            ListTile(
              minTileHeight: 30,
              leading: Icon(Icons.cookie, color: Color.fromARGB(255, 116, 58, 37),),
              title: Text('BEBIDAS E CHOCOLATES'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),
            ListTile(
              minTileHeight: 30,
              leading: FaIcon(FontAwesomeIcons.cheese, color: Color.fromARGB(255, 197, 191, 131),),
              title: Text('FRIO E LATICÍNIOS'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),
            ListTile(
              minTileHeight: 30,
              leading: FaIcon(FontAwesomeIcons.soap, color: Colors.blue,),
              title: Text('HIGIENE E BELEZA'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),
            ListTile(
              minTileHeight: 30,
              leading: FaIcon(FontAwesomeIcons.appleAlt, color: Color.fromARGB(255, 17, 88, 19),),
              title: Text('HOTIFRUTI'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),
            ListTile(
              minTileHeight: 30,
              leading: FaIcon(FontAwesomeIcons.sprayCan, color: Colors.lightBlue,),
              title: Text('LIMPEZA'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),
            ListTile(
              minTileHeight: 30,
              leading: FaIcon(FontAwesomeIcons.shoppingBasket, color: Colors.green,),
              title: Text('MERCEARIA'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),
            ListTile(
              minTileHeight: 30,
              leading: FaIcon(FontAwesomeIcons.breadSlice, color: const Color.fromARGB(255, 187, 109, 80),),
              title: Text('PADARIA'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),
            ListTile(
              minTileHeight: 30,
              leading: FaIcon(FontAwesomeIcons.paw, color: Colors.brown,),
              title: Text('UTILIDADES E PETSHOP'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

            body: SingleChildScrollView(
              child:  Column(
              children: [
                  Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: Color.fromARGB(255, 81, 44, 99),
              child: Row(
                children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Destaques()),
                  );
                        },
              child: Image.asset(
                'assets/images/logo.png',
                width: 130,
                height: 130,
              ),
                      ),
                  SizedBox(width: 80),
             GestureDetector(
                     onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Meucarrinho(),
            ),
          );
        },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Meu carrinho',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  
                  Row(
                    children: [
                      Icon(
            Icons.shopping_cart,
            color: Colors.white,
            size: 20,
          ),
          SizedBox(width: 5,),
                      Text(
                        'R\$112,05',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
            ],
           ),
         ),      
        ],
       ),
      ),
      Container(
              height: 70,
              decoration: BoxDecoration(
              color: Color.fromARGB(255, 81, 44, 99),
              border: Border.all(
                color: Color.fromARGB(255, 81, 44, 99),
              )
              ),
              child: 
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SearchBar(),
        ),
       ),
      ),
      Container(
        height: 2016,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Column(
          children: [
            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text('Minha Conta',
              style: TextStyle(
                fontSize: 28
              ),
              ),
            ),
            SizedBox(height: 5,),

            Padding(
              padding: const EdgeInsets.only(right: 43),
              child: Text('Se você já tem uma conta em nossa loja, acesse '),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Row(
                children: [
                  Text('sua conta '),
              
                  GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                        },
              child: Text('clicando aqui.',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                      ),
                ],
              ),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: EdgeInsets.only(right: 148),
              child: Text('Seus dados de contato',
              style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 1),
            
              child: Divider(color: Colors.black12,
              thickness: 1,),
            ),
            
            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Row(children: [
                Text('*',style: TextStyle(color: Colors.red, fontSize: 18),),
                SizedBox(width: 3,),
                Text('Nome'),

              ],
              ),
            ),
            Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                            height: 38,
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Nome',
                                labelStyle: TextStyle(color: Colors.grey),
                                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 17.0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3),
                                )
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Row(children: [
                Text('*',style: TextStyle(color: Colors.red, fontSize: 18),),
                SizedBox(width: 3,),
                Text('Sobrenome'),

              ],
              ),
            ),
            Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                            height: 38,
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Sobrenome',
                                labelStyle: TextStyle(color: Colors.grey),
                                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 17.0),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black12, width: 2),
                                  borderRadius: BorderRadius.circular(3),
                                )
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Row(children: [
                Text('*',style: TextStyle(color: Colors.red, fontSize: 18),),
                SizedBox(width: 3,),
                Text('CPF'),

              ],
              ),
            ),
            Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                            height: 38,
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'CPF',
                                labelStyle: TextStyle(color: Colors.grey),
                                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 17.0),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black12, width: 2),
                                  borderRadius: BorderRadius.circular(3),
                                )
                              ),
                            ),
                          ),
                        ),

                        Calendario(),

                        SizedBox(height: 5,),

                      Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Row(children: [
                Text('*',style: TextStyle(color: Colors.red, fontSize: 18),),
                SizedBox(width: 3,),
                Text('E-mail'),

              ],
              ),
            ),
            Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                            height: 38,
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'E-mail',
                                labelStyle: TextStyle(color: Colors.grey),
                                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 17.0),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black12, width: 2),
                                  borderRadius: BorderRadius.circular(3),
                                )
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 5,),

                      Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Row(children: [
                Text('*',style: TextStyle(color: Colors.red, fontSize: 18),),
                SizedBox(width: 3,),
                Text('Telefone'),

              ],
              ),
            ),
            Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                            height: 38,
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Telefone',
                                labelStyle: TextStyle(color: Colors.grey),
                                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 17.0),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black12, width: 2),
                                  borderRadius: BorderRadius.circular(3),
                                )
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 10,),

            Padding(
              padding: EdgeInsets.only(right: 176),
              child: Text('Sua senha de acesso',
              style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 1),
            
              child: Divider(color: Colors.black12,
              thickness: 1,),
            ),

            SizedBox(height: 5,),

                      Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Row(children: [
                Text('*',style: TextStyle(color: Colors.red, fontSize: 18),),
                SizedBox(width: 3,),
                Text('Senha'),

              ],
              ),
            ),
            Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                            height: 38,
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Senha',
                                labelStyle: TextStyle(color: Colors.grey),
                                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 17.0),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black12, width: 2),
                                  borderRadius: BorderRadius.circular(3),
                                )
                              ),
                            ),
                          ),
                        ),
            SizedBox(height: 5,),

                      Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Row(children: [
                Text('*',style: TextStyle(color: Colors.red, fontSize: 18),),
                SizedBox(width: 3,),
                Text('Repetir a Senha'),

              ],
              ),
            ),
            Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                            height: 38,
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Repetir a Senha',
                                labelStyle: TextStyle(color: Colors.grey),
                                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 17.0),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black12, width: 2),
                                  borderRadius: BorderRadius.circular(3),
                                )
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 10,),

            Padding(
              padding: EdgeInsets.only(right: 260),
              child: Text('Informativo',
              style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 1),
            
              child: Divider(color: Colors.black12,
              thickness: 1,),
            ),

            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.only(right: 258),
              child: Text('Deseja receber?'),
            ),
            RadioButtons(),

            SizedBox(height: 20,),

             Padding(
                          padding: const EdgeInsets.only(right: 250),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (context) => Cadastro()),
                              );
                            },
                            child: Text('Continuar'),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Color.fromARGB(255, 41, 5, 70), 
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
                              shape: RoundedRectangleBorder(),
                            ),
                          ),
                        ),

                        SizedBox(height: 30,),

                        Container(
              width: MediaQuery.of(context).size.width,
              height: 850,
              color: Color.fromARGB(255, 33, 3, 58),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  SizedBox(height: 20,),
                  Fim(),
          ],
        ),
      ),
     ]
    ),
   ),
              ]
              ),
            ),
  );
 }
}















class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        hintText: 'Digite o que está procurando',
        hintStyle: TextStyle(color: Colors.grey), // Cor do texto do hint
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0.0),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.0), // Espaçamento interno
        suffixIcon: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 110, 66, 146),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
            ),
          ),
          child: Icon(Icons.search, color: Colors.white,), // Ícone de pesquisa
        ),
      ),
      onChanged: (value) {
        // Aqui você pode adicionar a lógica para pesquisar conforme o usuário digita
        print('Pesquisando por: $value');
      },
      style: TextStyle(color: Colors.white), // Cor do texto
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}


class Calendario extends StatefulWidget {
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<Calendario> {
  TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        _dateController.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Row(children: [
                Text('*',style: TextStyle(color: Colors.red, fontSize: 18),),
                SizedBox(width: 3,),
                Text('Data de nascimento'),

              ],
              ),
            ),
            
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 38,
                  child: TextFormField(
                    controller: _dateController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      
                      hintText: 
                      'Data de nascimento',
                      hintStyle: TextStyle(color: Colors.grey)
                    ),
                    readOnly: true,
                  ),
                ),
              ),
              Container(
                height: 38,
                child: ElevatedButton(
                  onPressed: () => _selectDate(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  child: Icon(
                    Icons.calendar_month_sharp,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class RadioButtons extends StatefulWidget {
  @override
  _RadioButtonsState createState() => _RadioButtonsState();
}

class _RadioButtonsState extends State<RadioButtons> {
  String _selectedOption = 'Não';

  void _handleRadioValueChange(String? value) {
    setState(() {
      if (value != null) {
        _selectedOption = value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 240),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Radio<String>(
                value: 'Sim',
                groupValue: _selectedOption,
                onChanged: _handleRadioValueChange,
              ),
              Text('Sim'),
            ],
          ),
          Row(
            children: [
              Radio<String>(
                value: 'Não',
                groupValue: _selectedOption,
                onChanged: _handleRadioValueChange,
              ),
              Text('Não'),
            ],
          ),
        ],
      ),
    );
  }
}
