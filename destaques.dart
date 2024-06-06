import 'package:chegou_a_feira/barra.dart';
import 'package:chegou_a_feira/cadastro.dart';
import 'package:flutter/material.dart';

class Destaques extends StatefulWidget {
  const Destaques({super.key});

  @override
  State<Destaques> createState() => _DestaquesState();
}

class _DestaquesState extends State<Destaques> {
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
              height: 150,
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
                  Text(
                    'R\$0,00',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10,),

              
              SizedBox(width: 100, child: SearchBar(),),
                ],
               ),      
        ],
       ),
      ),
      Container(
         width: MediaQuery.of(context).size.width,
         height: 70,
         color: Colors.white,
         child: 
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('DESTAQUES',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),
           ),
          ],
         ),
      ),
      Row(
        children: [
          Container(
            width: 200,
            height: 370,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black12,
                width: 1
              )
            ),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                    Image.asset('assets/images/sabao.png', ),
                    Positioned(
                      bottom: 10,
                      left: 0,
                  child: Container(
                      width: 78,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 41, 5, 70),
                      ),
                      child: Center(
                        
                        child: Text('PROMOÇÃO',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11
                      ),
                     ),
                    ),
                   ), 
                  ),

                    


                    ],
                    ),
                    SizedBox(height: 10,),
                    
                    Text('Sabão Liquido Becker 3L',),

                    SizedBox(height: 50,),

                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                            child: Text('R\$18,99',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Color.fromARGB(255, 156, 16, 16),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                           ),
                          ),
                            SizedBox(width: 10,),
                            Container(
                        width: 75,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 156, 16, 16),
                        ),
                        child: Stack(
                          
                          children: [
                            
                            Align(
                              alignment: Alignment.center,
                            
                            child: Text('R\$21,99',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14
                        ),
                       ),
                      ),
                       Positioned(
                        left: 9,
                        child: Text('__________',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12
             ),
            ),
           ),
          ],
         ),
        ), 
       ],
      ),
     ),
    ),
   ]
  ),
 ],
),
            
          ),
          Container(
            width: 192.7,
            height: 370,
            decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.black12,
              width: 1
          ),
         ),
        ),
       ],
      ),
     ],
    ),
   ),
  );
 }
}







class Barra extends StatelessWidget {
  const Barra({super.key});

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
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Color.fromARGB(255, 46, 45, 45), // Cor de fundo
        contentPadding: EdgeInsets.symmetric(horizontal: 16.0), // Espaçamento interno
        suffixIcon: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 110, 66, 146),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8.0),
              bottomRight: Radius.circular(8.0),
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
