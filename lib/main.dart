import 'package:flutter/material.dart';
import 'model/Contact.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp>
{
  /*
  تطبيق Contacts List

اعمل ListView للـ Contacts.

كل Contact عبارة عن Card فيه (صورة - اسم - رقم).

جرب تضيف أيقونة اتصال (IconButton).
   */
List<ContactUser> contacts =
[
  ContactUser("Nader", "0125211354", "https://gratisography.com/wp-content/uploads/2025/03/gratisography-cruising-cat-1036x780.jpg"),
  ContactUser("Nser", "0125211354", "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhNKRGlfcUP98fcO8HvZepd7Gd-24Mitec870XjVcqnCseDSNJu6rfviaFuzJGW0bgML6_LTOC-aWHflUJ7sltCeXHa50kZ9OCJWiTI8j02pbiOnfvL1QrOP0PgUrBXRscGw6dMfvUt5pTImdD59RVB_D6abbGSFd8x_wH36jIm-gT0HugMrUUEHCBE_tPh/w458-h640/%D8%B5%D9%88%D8%B1-%D8%A7%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D9%87.jpg-rw"),
  ContactUser("Aline", "0125211354", "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgE7UqUz_XpMz1QPXgyirc-1Cbq3nGoTWQjYX4A__R-_OmxXSnyvt2RG3q4ieT-KYLmJcrQ0DNQ7XFOY3gy4qN2Ym4Yc8rS2N-ZC4jiqMTH0obXFNbUl0Xl8X4iy-VLAlKzR0l5bGIz2bf7cc1DHxEVVjgvBslF0ti86abnLzShcMaScjsQTqeJ_KC4a9Cq/w640-h580/%D8%B5%D9%88%D8%B1-%D8%AF%D9%8A%D9%86%D9%8A%D8%A9.jpg"),
  ContactUser("Nasrer", "012511354", "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEghQykGxRcXM9r_9MqWFVBl6gNs7yJaOX3U0VxFkF4lbn4XzIM3mJDWRWqhi8GASPIi_Mohawsxu3fJKIEKh2z6tIyJ4ZgVkLIoPkvmYPZWuUZtXsxG_PQ9joqqqzuDBeSur7syHFwGwHoCt8hB1z3NcInVnpX0hxolbV8JI-F4Y0qgs87OVhk8cYdecEQ4/s400/%D8%B5%D9%88%D8%B1-%D8%A7%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D9%87-102.jpg"),
  ContactUser("mohamed", "0125211354", "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiElPwbVTsL2cOZxI00FAebroNaOkNCG2uPutG7PVoDUshtdDllnoWeFcbd6jWxDhnybtQVFr-le91t1OavrduPiQwStoZCECp0HwtpJilmgb9hHNBnLcTgh1DiaqH0pWKhayy2mLPbEc3agpQdrE3MgAhBST0bRuxRNtS8zsCxG3Gm6shbhdYDidlhnUfN/s400/%D8%B5%D9%88%D8%B1-%D8%A7%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D9%87-106.jpg"),
  ContactUser("Diyanr", "01121354", "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjojEGbVIPAAge7rWogZo_8k9x9UleoBfM6sBbFYFFCkDjeyt_L94e89VIb4P0DCb1XmDcJTGl3Jc_wdZJLiMYXyTH6aLIEB_fLjPPk-57jrSkoSLg3i1AW6JanKFAVJzjgZnVSeGwgivF1spGxybNb9qwSrLckX8ktBkC80ef0pTOY7lK3eGWbBldamvnx/s400/%D8%B5%D9%88%D8%B1-%D8%A7%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D9%87-107.jpg"),
  ContactUser("Rihamr", "0125211354", "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEifhwGeFeweHDSl5H4kzMUmxIgyhE0Y3PytpPLrx7i5JzIAkFT16-ObKyON_FVK8ZsBg0Nvg6Adbcjio3ZU7eCgyXVUs7csckhH0ysYzya9iqM4326PLt2kNJ5dku19Nn6T2gopI6aPbdcHpReM3zquk4rtx0Jr8rR4d2TWA35HvCfj5wtqlCZz5AFKiuzI/s400/%D8%B5%D9%88%D8%B1-%D8%A7%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D9%87-108.jpg"),
  ContactUser("medo", "0125211354", "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgPTXLjjcBLVLyvo_Vlg5CItLQzscCOYZSehvzchL2LgeqLPkjql_6DTBw3DY_XLoLPxSjOCd9CEub4RUKhAp9oIs2RDq8Ol862RxPxdhyphenhyphenb55PxdvbOf8q3IgXBomJ4RWGnocTCp-8j_yJcL33k4NKgq_HhYSj9j3jFzb8AE_90p1o_8nUv9HNIKyghxSBd/s400/%D8%B5%D9%88%D8%B1-%D8%A7%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D9%87-109.jpg"),
  ContactUser("Alice", "0125211354", "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhQIHI-900QoN1pQ3CXYYnF26Qoexh9EKZybmWkULrDu-kHgyiWY4wptnauDaaST5wVJGM6DHm-FKHwVGveR_tfSE-3S1TFLDne_A9uU8sPnFaDhRd-EJaF4FNPxHN0Y5IpsST-fpVGhJRtk7w0Oy9aq8OkWQDlhUQL11Ljv5wpOpYqJozCvDsu38mBbl3P/s400/%D8%B5%D9%88%D8%B1-%D8%A7%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D9%87-110.jpg"),
  ContactUser("Nosder", "0125211354", "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgjbVClAxkVZJTItrj6d0KwpBVqH_yEveY5jEDtOTODoVbCI3POodzQyHFh1t0n63fi5tp7vfFQ6QHOU50-Q1aGy-ots7yXQr8fgfArw1bd4ZtR59fphP6-k1oMbQ-CsmGZwtI10Hoc75VJZrsCECnD321p6_PmN_MHgA86ZAdQJMJ6LFQhi78l0iM-BpOR/s400/%D8%B5%D9%88%D8%B1-%D8%A7%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D9%87-116.jpg"),
  ContactUser("John", "0125211354", "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj93_cPltlsCx8279CXAPYb7taCYQlkgkOLl4pr7Ei__uL0JotfsRgLp6JCINBudCQIEYzFf2_S45_lubrP8N1jPC2a6H0mBOUrHHJYjHWoWJmDuo1nxS_DPDlfja_dAPXxg-urh0jWCLqYiG-Lz2FST0wX9NvNbq_Ws-g3_fpbdGij5nelu3MJ62I4SBbx/s400/%D8%B5%D9%88%D8%B1-%D8%A7%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D9%87-118.jpg"),
  ContactUser("Nader", "0125211354", "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiiPR6uau2bn8eizRTOBN2N1xS-9NajPLt7toVvm6lSuAfz5a9Hxm-lD0giHBCcSfWmKwIFgU8DfDy1x0T_0w_V4ipl8_nILAu3MBrSjyoG5p80_DpQFzu_Wq93M8pcKndP1-A4V-LzrKCvXmOgZBJUk2k4ivCqEepESoXzIgdTjnxpCF8XoahesuL-mDHf/s400/%D8%B5%D9%88%D8%B1-%D8%A7%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D9%87-90.jpg"),
  ContactUser("Mara", "0125211354", "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgjbVClAxkVZJTItrj6d0KwpBVqH_yEveY5jEDtOTODoVbCI3POodzQyHFh1t0n63fi5tp7vfFQ6QHOU50-Q1aGy-ots7yXQr8fgfArw1bd4ZtR59fphP6-k1oMbQ-CsmGZwtI10Hoc75VJZrsCECnD321p6_PmN_MHgA86ZAdQJMJ6LFQhi78l0iM-BpOR/s400/%D8%B5%D9%88%D8%B1-%D8%A7%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D9%87-116.jpg"),
  ContactUser("maror", "0125211354", "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhQIHI-900QoN1pQ3CXYYnF26Qoexh9EKZybmWkULrDu-kHgyiWY4wptnauDaaST5wVJGM6DHm-FKHwVGveR_tfSE-3S1TFLDne_A9uU8sPnFaDhRd-EJaF4FNPxHN0Y5IpsST-fpVGhJRtk7w0Oy9aq8OkWQDlhUQL11Ljv5wpOpYqJozCvDsu38mBbl3P/s400/%D8%B5%D9%88%D8%B1-%D8%A7%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D9%87-110.jpg"),
  ContactUser("Nader", "0125211354", "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgPTXLjjcBLVLyvo_Vlg5CItLQzscCOYZSehvzchL2LgeqLPkjql_6DTBw3DY_XLoLPxSjOCd9CEub4RUKhAp9oIs2RDq8Ol862RxPxdhyphenhyphenb55PxdvbOf8q3IgXBomJ4RWGnocTCp-8j_yJcL33k4NKgq_HhYSj9j3jFzb8AE_90p1o_8nUv9HNIKyghxSBd/s400/%D8%B5%D9%88%D8%B1-%D8%A7%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D9%87-109.jpg"),
];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text("ContactShow"),
          ),
            body :ListView.builder(
            itemCount: contacts.length,
              itemBuilder: (context, i )
                {
                  return Card(child:ListTile(
                    leading:Image.network(contacts[i].img!),


                    title: Text("Contact : ${contacts[i].name}"),
                    subtitle: Text("Number :${contacts[i].number}"),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(onPressed: () { }, icon:Icon(Icons.call,color: Colors.green),focusColor: Colors.lightGreen,),

                          SizedBox(width: 10),

                          IconButton(onPressed: () { }, icon:Icon(Icons.message,color: Colors.orangeAccent),focusColor: Colors.orange,),


                        ],
                      ),

                  ),);
                },


        )


        ),
    );

  }}
