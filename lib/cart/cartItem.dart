import 'package:hive/hive.dart';
import 'package:shape_cam/detailed_product.dart';
part 'cartItem.g.dart';

@HiveType(typeId: 0)
class CartItem {
  @HiveField(0)
  final DetailedProduct product;
  @HiveField(1)
  final int itemCount;

  CartItem({this.product, this.itemCount});
}
