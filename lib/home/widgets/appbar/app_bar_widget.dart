import 'package:devquiz/core/app_gradients.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/home/widgets/score_card/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            height: 250,
            child: Stack(
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 161,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: double.maxFinite,
                  decoration: BoxDecoration(gradient: AppGradients.linear),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(TextSpan(
                          text: "Olá, ",
                          style: AppTextStyles.title,
                          children: [
                            TextSpan(
                                text: "Danilo", style: AppTextStyles.titleBold)
                          ])),
                      Container(
                        height: 58,
                        width: 58,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://avatars.githubusercontent.com/u/624381?s=400&u=82c834a16ff3b245034df21425e4ffcfc9c9610d&v=4"))),
                      )
                    ],
                  ),
                ),
                Align(alignment: Alignment(0.0, 1.0), child: ScoreCardWidget())
              ],
            ),
          ),
        );
}
