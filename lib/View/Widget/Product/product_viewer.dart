import 'package:flutter/material.dart';

import '../../../Core/Constant/colors.dart';
import '../Home/categories_box.dart';

class ProductViewer extends StatelessWidget {
  const ProductViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 300,
      decoration: BoxDecoration(
          color: AppColor.boxBackground,
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            fit: BoxFit.contain,
            image: NetworkImage(
              "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5e05a34b-ed9a-42cf-9aad-1cf232ee4e67/dfkiklo-3854420c-8164-4c16-9ede-500c8ed92a64.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzVlMDVhMzRiLWVkOWEtNDJjZi05YWFkLTFjZjIzMmVlNGU2N1wvZGZraWtsby0zODU0NDIwYy04MTY0LTRjMTYtOWVkZS01MDBjOGVkOTJhNjQucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.z-1kg-LcgwqOnj4v2ft5EGh4EJES5L3PUgBDYKwzbD4",
            ),
          )),
    );
  }
}
// Stack(children: [
//         Center(
//           child: Image.network(
//             "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5e05a34b-ed9a-42cf-9aad-1cf232ee4e67/dfkiklo-3854420c-8164-4c16-9ede-500c8ed92a64.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzVlMDVhMzRiLWVkOWEtNDJjZi05YWFkLTFjZjIzMmVlNGU2N1wvZGZraWtsby0zODU0NDIwYy04MTY0LTRjMTYtOWVkZS01MDBjOGVkOTJhNjQucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.z-1kg-LcgwqOnj4v2ft5EGh4EJES5L3PUgBDYKwzbD4",
//             fit: BoxFit.contain,
//           ),
//         ),
//         Positioned(
//             width: 50,
//             child: ListView.separated(
//               separatorBuilder: (context, index) => const SizedBox(height: 10),
//               itemCount: 4,
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               itemBuilder: (context, index) {
//                 return const SmallBox(
//                     img:
//                         "https://cdn-icons-png.flaticon.com/512/3531/3531881.png");
//               },
//             )),
//       ]),