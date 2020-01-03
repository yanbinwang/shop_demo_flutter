import 'package:baixing/pages/Cart/model/cartStore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class CartBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      color: Colors.white,
      child: Consumer<CartStore>(builder: (_, cartStore, child) {
        return Row(
          children: <Widget>[
            selectAllBtn(cartStore),
            allPriceArea(cartStore),
            goButton(cartStore),
          ],
        );
      }),
    );
  }

  // 全选按钮组件
  Widget selectAllBtn(cartStore) {
    return Container(
      child: Row(
        children: <Widget>[
          Checkbox(
            value: cartStore.isAllCheck,
            activeColor: Colors.pink,
            onChanged: (bool val) {
              print('全选$val');
              cartStore.changeAllSelectBtnState(val);
            },
          ),
          Text('全选'),
        ],
      ),
    );
  }

  // 合计组件
  Widget allPriceArea(cartStore) {
    return Container(
      width: ScreenUtil().setWidth(430),
      child: Column(
        children: <Widget>[
          combinedPrice(cartStore),
          combinedPriceBottom(),
        ],
      ),
    );
  }

  // 合计栏组件
  Widget combinedPrice(cartStore) {
    return Row(
      children: <Widget>[
        Container(
          alignment: Alignment.centerRight,
          width: ScreenUtil().setWidth(280),
          child: Text(
            '合计：',
            style: TextStyle(fontSize: ScreenUtil().setSp(36)),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          width: ScreenUtil().setWidth(150),
          child: Text(
            '￥${cartStore.allPrice.toStringAsFixed(2)}',
            style: TextStyle(
              fontSize: ScreenUtil().setSp(36),
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }

  // 合计栏底部
  Widget combinedPriceBottom() {
    return Container(
      width: ScreenUtil().setWidth(430),
      alignment: Alignment.centerRight,
      child: Text(
        '满10元免配送费',
        style: TextStyle(
          color: Colors.black38,
          fontSize: ScreenUtil().setSp(22),
        ),
      ),
    );
  }

  // 结算按钮
  Widget goButton(cartStore) {
    return Container(
      width: ScreenUtil().setWidth(160),
      padding: EdgeInsets.only(left: 10),
      child: GestureDetector(
        onTap: () {
          final v = Vector(2, 3);
          final w = Vector(2, 22);
          print(v + 5); // 输出4， 当类使用+号时，重载类中运算符
          print(w - 6); // 输出28，当类使用-号时，重载类中自定的运算方法
        },
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(3),
          ),
          child: Text(
            '结算(${cartStore.allGoodsitem})',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

// 定义一个类，上面的运算符扩展
class Vector {
  final int x, y;
  Vector(this.x, this.y);
  // 扩展此类的操作符重载函数
  num operator +(v) => this.x * x;
  num operator -(v) => this.y + v;
}
