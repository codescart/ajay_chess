import 'package:chess_app/bloc/cubits/game_cubit.dart';
import 'package:chess_app/bloc/states/game_state.dart';
import 'package:chess_app/config/colors.dart';
import 'package:chess_app/ui/board_widget.dart';
import 'package:chess_app/ui/lost_figures_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(leading: Icon(Icons.arrow_back),
        backgroundColor: AppColors.white,elevation: 0,),
      body: BlocBuilder<GameCubit, GameState>(
        bloc: GetIt.I<GameCubit>(),
        builder: (context, state) {
          return Stack(
            children: [
              Positioned(
               top: 2,
                  left: 20,
                  child: Row(
                    children: [
                      Container(
                height: 50,
                width: 50,
                    decoration: BoxDecoration(image: DecorationImage(
                        image: AssetImage("assets/images/icons8-person-94.png"), fit: BoxFit.cover),
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10),color: Colors.white

              ),
                      ),SizedBox(width: 10,),
                      Column(mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Aman",
                            textAlign: TextAlign.start,

                            style: TextStyle(fontSize: 10,fontWeight: FontWeight.w800),),
                          Text("10 Times👑",
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 8,fontWeight: FontWeight.w800))
                        ],
                      ),
                     // Text("10 Times Winner")
                    ],
                  )),
              Positioned(
                bottom: 8,
                  right: 30,

                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Harsh",
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900)),
                          Text("5 Times 👑 ",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w800)),
                        ],
                      ),
                      SizedBox(width: 10,),
                      Container(
                height: 50,
                width: 50,
          decoration: BoxDecoration(image: DecorationImage(
          image: AssetImage("assets/images/icons8-person-94.png")),
          border: Border.all(),
          borderRadius: BorderRadius.circular(10),color: Colors.white
              )
                      ),

                      //Text("5 Times winner"),
                    ],
                  ),),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LostFiguresWidget(figures: state.board.blackLost.figures),
                  BoardWidget(
                    availablePositionsHash: state.availablePositionsHash,
                    board: state.board,
                    selectedCell: state.selectedCell,
                  ),
                  LostFiguresWidget(figures: state.board.whiteLost.figures),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
