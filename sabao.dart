import 'package:chegou_a_feira/barra.dart';
import 'package:chegou_a_feira/destaques.dart';
import 'package:chegou_a_feira/login.dart';
import 'package:flutter/material.dart';

class Sabao extends StatelessWidget {
  const Sabao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 176, 39, 69),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: Colors.white,),
        ),
        actions: [
          login(),
          SizedBox(width: 18,),
          cadastro(),
          SizedBox(width: 10,),
          
          
        ],
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
              Column(
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
                        'R\$0,00',
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
        height: 450,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Column(
          children: [
            Image.asset('assets/images/sabao2.png',),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Divider(color: Colors.black12,),
            )
          ],
        ),
      ),
      Container(
        height: 1111,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: 
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                'Sabão Liquido Becker 3L',
                style: TextStyle(
                  fontSize: 30
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 270),
              child: Text('Modelo: 231'),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 175),
              child: Text('Diponibilidade: Em estoque'),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(right: 295),
              child: Container(
                          width: 75,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Stack(
                            
                            children: [
                              
                              Align(
                                alignment: Alignment.center,
                              
                              child: Text('R\$21,99',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold
                          ),
                         ),
                        ),
                         Positioned(
                          left: 9,
                          child: Text('__________',
                          style: TextStyle(
                            fontSize: 12
                ),
               ),
              ),
             ],
            ),
           ),
          ),
          SizedBox(height: 5,),

          Padding(
            padding: const EdgeInsets.only(right: 238),
            child: Text('R\$18,99',
            style: TextStyle(
              color: Color.fromARGB(255, 156, 16, 16),
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
            ),
          ), 

                        Container(
                          width: 330,
                        height: 100,
                          child: QuantitySelector2(),
                        ),
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
          ],
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


// BOTÃO DE ADICIONAR
class QuantitySelector2 extends StatefulWidget {
  @override
  _QuantitySelectorState createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector2> {
int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

@override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
            ),
            child: IconButton(
              icon: Icon(Icons.remove),
              onPressed: _decrementCounter,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                '$_counter',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
            ),
            child: IconButton(
              icon: Icon(Icons.add),
              onPressed: _incrementCounter,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 20,),
          Container(
            height: 48.0,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              border: Border.all(color: Colors.lightBlue),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
              },
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
