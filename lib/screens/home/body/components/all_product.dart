import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:katte/model/product.dart';
import 'package:http/http.dart' as http;
import 'package:katte/restAPI/rest_api.dart';
import 'package:katte/screens/home/body/components/ao_product.dart';
import 'package:katte/screens/home/body/components/type_product.dart';

import 'popularproduct.dart';
import 'aokhoac_product.dart';

// ignore: must_be_immutable
class AllProduct extends StatelessWidget {
  RestApi restApi = RestApi();
  AllProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FutureBuilder<List<Product>>(
          future: restApi.fetchAllProduct(http.Client()),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);

            return snapshot.hasData
                ? PopularProducts(ds: snapshot.data!)
                : Center(
                    child: CircularProgressIndicator(),
                  );
          },
        ),
        SizedBox(height: 20),
        FutureBuilder<List<Product>>(
          future: restApi.fetchProductType(http.Client(), "Áo thun nữ"), ///////
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);

            return snapshot.hasData
                ? TypeProduct(
                    ds: snapshot.data!,
                    tenLoai: 'ÁO NỮ THỊNH HÀNH',
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  );
          },
        ),
        SizedBox(height: 20),
        FutureBuilder<List<Product>>(
          future:
              restApi.fetchProductType(http.Client(), "Áo thun nam"), ///////
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);

            return snapshot.hasData
                ? TypeProduct(
                    ds: snapshot.data!,
                    tenLoai: 'ÁO NAM THỊNH HÀNH',
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  );
          },
        ),
        SizedBox(height: 20),
        FutureBuilder<List<Product>>(
          future: restApi.fetchProductType(http.Client(), "Quần nữ"), ///////
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);

            return snapshot.hasData
                ? TypeProduct(
                    ds: snapshot.data!,
                    tenLoai: 'QUẦN NỮ THỊNH HÀNH',
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  );
          },
        ),
        SizedBox(height: 20),
        FutureBuilder<List<Product>>(
          future: restApi.fetchProductType(http.Client(), "Quần nam"), ////////
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);

            return snapshot.hasData
                ? TypeProduct(
                    ds: snapshot.data!,
                    tenLoai: 'QUẦN NAM THỊNH HÀNH',
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  );
          },
        ),
      ],
    );
  }
}
