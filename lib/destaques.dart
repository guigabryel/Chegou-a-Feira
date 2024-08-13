import 'package:chegou_a_feira/components/barra.dart';
import 'package:chegou_a_feira/cadastro.dart';
import 'components/abainicial.dart';
import 'components/barralateral.dart';
import 'components/botaodestaques.dart';
import 'components/fim.dart';
import 'package:chegou_a_feira/login.dart';
import 'package:chegou_a_feira/minhaconta.dart';
import 'package:chegou_a_feira/produtos/sabao1.dart';
import 'package:chegou_a_feira/carrinho.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'produtos em destaques/abacaxi.dart';
import 'produtos em destaques/alface.dart';
import 'produtos em destaques/alho.dart';
import 'produtos em destaques/banana.dart';
import 'produtos em destaques/batatadoce.dart';
import 'produtos em destaques/batatainglesa.dart';
import 'produtos em destaques/batatapalha.dart';
import 'produtos em destaques/beterraba.dart';
import 'produtos em destaques/biscoito.dart';
import 'produtos em destaques/bolinhas.dart';
import 'produtos em destaques/cebola.dart';
import 'produtos em destaques/cenoura.dart';
import 'produtos em destaques/coco.dart';
import 'produtos em destaques/coentro.dart';
import 'produtos em destaques/coxinha.dart';
import 'produtos em destaques/inhame.dart';
import 'produtos em destaques/invictolimao.dart';
import 'produtos em destaques/invictomaca.dart';
import 'produtos em destaques/invictoneutro.dart';
import 'produtos em destaques/jerimum.dart';
import 'produtos em destaques/leite.dart';
import 'produtos em destaques/maca.dart';
import 'produtos em destaques/macarrao.dart';
import 'produtos em destaques/sabao.dart';
import 'produtos em destaques/tomate.dart';

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
        backgroundColor: Color.fromARGB(255, 176, 39, 69),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        actions: [
          login(),
          SizedBox(width: 18),
          cadastro(),
          SizedBox(width: 10),
        ],
      ),
      drawer: Barralateral(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Abainicial(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'DESTAQUES',
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
                Expanded(
                  child: Sabao()
                ),

                Expanded(
                  child: Biscoito()
                ),
              ],
            ),
       
      
       Row(
              children: [
                Expanded(
                  child: Batatapalha()
                ),
                                
                Expanded(
                  child: Macarrao()
                ),
              ],
            ),
            
      
      Row(
              children: [
                Expanded(
                  child: Invictolimao()
                ),
                Expanded(
                  child: Invictomaca()
                ),
              ],
            ),

      Row(
              children: [
                Expanded(
                  child: Invictoneutro()
                ),

                Expanded(
                  child: Banana()
                ),
              ],
            ),

       Row(
              children: [
                Expanded(
                  child: Maca()
                ),
                Expanded(
                  child: Tomate()
                ),
              ],
            ),
      
       Row(
              children: [
                Expanded(
                  child: Cebola()
                ),
                Expanded(
                  child: Alho()
                ),
              ],
            ),
      
      Row(
              children: [
                Expanded(
                  child: Batatainglesa()
                ),
                Expanded(
                  child: Batatadoce()
                ),
              ],
            ),
     
      Row(
              children: [
                Expanded(
                  child: Alface()
                ),
                Expanded(
                  child: Coentro()
                ),
              ],
            ),
      
      Row(
              children: [
                Expanded(
                  child: Cenoura()
                ),
                Expanded(
                  child: Beterraba()
                ),
              ],
            ),
      
      Row(
              children: [
                Expanded(
                  child: Jerimum()
                ),
                Expanded(
                  child: Coco()
                ),
              ],
            ),
      
      Row(
              children: [
                Expanded(
                  child: Inhame()
                ),
                Expanded(
                  child: Abacaxi()
                ),
              ],
            ),
      
      Row(
              children: [
                Expanded(
                  child: Bolinhas()
                ),
                Expanded(
                  child: Coxinha()
                ),
              ],
            ),
      
       Row(
              children: [
                Expanded(
                  child: Leite()
                ),
                Expanded(
                  child: Container(
                    height: 403,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black12,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
                    Container(
                      width: double.infinity,
                        height: 10,
                        decoration: BoxDecoration(
                        color: Colors.white
                      ),
                    ),
                      Container(
                         width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                        color: Colors.white
                          ),
                         child: Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: Container(
                            child: Divider(color: Colors.black12,)
                      ),
                    ),
                  ),
                    
                    Fim(),
          ]
    ),
      ),
  );
 }
}

class Produto {
  String nome;
  double preco;
  int quantidade;

  Produto({required this.nome, required this.preco, this.quantidade = 1});
}

class CarrinhoModel extends ChangeNotifier {
  List<Produto> _produtos = [];
  double _total = 0.0;

  List<Produto> get produtos => _produtos;

  double get total => _total;

  void adicionarProduto(Produto produto) {
    _produtos.add(produto);
    _total += produto.preco;
    notifyListeners();
  }

  void removerProduto(Produto produto) {
    _produtos.remove(produto);
    _total -= produto.preco;
    notifyListeners();
  }
}