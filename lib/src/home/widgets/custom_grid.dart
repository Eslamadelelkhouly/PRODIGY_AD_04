import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:xo/src/home/manager/manager.dart';
import 'package:xo/src/home/widgets/container_grid.dart';

class CustomGrid extends StatelessWidget {
  const CustomGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<Manager>(
      builder: (context, manager, child) {
        return Column(
          children: [
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(20),
                itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8.h,
                  crossAxisSpacing: 8.w,
                ),
                itemBuilder: (context, index) {
                  return ContainerGrid(
                    onTap: () {
                      manager.check(index);
                      if (manager.player1.length + manager.player2.length == 5)
                        manager.win();
                    },
                    kind: manager.board[index],
                  );
                },
              ),
            ),
            Text(
              manager.win_player == 'n'
                  ? 'Not Win'
                  : '${manager.win_player} Wins',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            TextButton(
              onPressed: () => manager.reset(),
              child: Text(
                'Restart',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }
}
