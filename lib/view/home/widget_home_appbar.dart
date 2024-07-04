part of '../view.dart';

Widget widgetHomeAppbar(){
  Widget customName()=> Text(
    "Bintang Mandiri",
    style: CustomFont.poppins14Regular(color: CustomColor.white),
  );

  Widget customAddress(){
    Widget icon()=> Icon(
      Icons.location_on_outlined,
      color: CustomColor.white,
      size: 12.sp,
    );

    Widget data()=> Text(
      "Tengku Iskandari",
      style: CustomFont.poppins10Regular(color: CustomColor.white),
    );

    return Row(
      children: [
        icon(),
        SizedBox(width: 3.w,),
        data(),
      ],
    );
  }

  Widget customStatus()=> Text(
    "Belum Diberikan",
    style: CustomFont.poppins12Regular(
      color: CustomColor.white
    ),
  );
  
  Widget customPhone(){
    Widget icon()=> Icon(
      Icons.phone,
      color: CustomColor.white,
      size: 12.sp,
    );

    Widget data()=> Text(
      "+6281360084071",
      style: CustomFont.poppins10Regular(color: CustomColor.white),
    );

    return Row(
      children: [
        icon(),
        SizedBox(width: 3.w,),
        data(),
      ],
    );
  }

  return Padding(
    padding: EdgeInsets.only(
      left: 15.w,
      right: 15.w,
      top: 5.h,
      bottom: 5.h
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customName(),
            customAddress(),
          ],
        ),
        Column(
          children: [
            customStatus(),
            customPhone(),
          ],
        )
      ],
    ),
  );
}