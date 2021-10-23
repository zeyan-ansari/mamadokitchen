import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:transparent_image/transparent_image.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}
List<String> imageList = [
  'https://www.thespruceeats.com/thmb/X6mg_2VBCQQ2X8VrLcPTf8_4ce0=/2733x2050/smart/filters:no_upscale()/chinese-take-out-472927590-57d31fff3df78c5833464e7b.jpg',
  'https://www.themediterraneandish.com/wp-content/uploads/2016/01/Chicken-Shawarma-Recipe-The-Mediterranean-Dish-2.jpg',
  'https://img.buzzfeed.com/thumbnailer-prod-us-east-1/video-api/assets/216054.jpg',
  'https://imagesvc.meredithcorp.io/v3/mm/image?q=85&c=sc&poi=%5B1000%2C750%5D&w=2000&h=1000&url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F19%2F2018%2F09%2F11%2Fmrtrending_0905180427-2000.jpg',
  'https://wallpaperaccess.com/full/4622434.jpg',
  'https://static.toiimg.com/thumb/54651882.cms?width=1200&height=900',
  'https://images.unsplash.com/photo-1546549032-9571cd6b27df?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGFzdGF8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80''https://www.thespruceeats.com/thmb/X6mg_2VBCQQ2X8VrLcPTf8_4ce0=/2733x2050/smart/filters:no_upscale()/chinese-take-out-472927590-57d31fff3df78c5833464e7b.jpg',
  'https://www.themediterraneandish.com/wp-content/uploads/2016/01/Chicken-Shawarma-Recipe-The-Mediterranean-Dish-2.jpg',
  'https://img.buzzfeed.com/thumbnailer-prod-us-east-1/video-api/assets/216054.jpg',
  'https://imagesvc.meredithcorp.io/v3/mm/image?q=85&c=sc&poi=%5B1000%2C750%5D&w=2000&h=1000&url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F19%2F2018%2F09%2F11%2Fmrtrending_0905180427-2000.jpg',
  'https://wallpaperaccess.com/full/4622434.jpg',
  'https://static.toiimg.com/thumb/54651882.cms?width=1200&height=900',
  'https://images.unsplash.com/photo-1546549032-9571cd6b27df?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGFzdGF8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80'
];
class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(

        color: Colors.white

    ),
        child: StaggeredGridView.countBuilder(
          padding: EdgeInsets.all(10),
          crossAxisCount: 4,
          itemCount: imageList.length,
          itemBuilder: (BuildContext context, int index) => new Container(

              child: new  ClipRRect(
                borderRadius: BorderRadius.all(
                    Radius.circular(15)),
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: imageList[index],fit: BoxFit.cover,
                ),
              ),),
          staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(2, index.isEven ? 2 : 1),
          mainAxisSpacing:8.0,
          crossAxisSpacing: 8.0,
        ),
      ),
    );
  }
}
