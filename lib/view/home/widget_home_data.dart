part of '../view.dart';

Widget widgetHomeData(){
  ControllerHome controllerHome = Get.find();
  
  Widget customCard({required int index}){
    Widget image()=> Image.asset(
      "assets/giftbox.png",
      height: 25.r,
      width: 25.r,
    );
    Widget customTitle()=> Obx(()=> Text(
      (controllerHome.filter.isNotEmpty)
        ? controllerHome.filter[index]["TTOTTPNo"]
        : controllerHome.jsonCustomerTTH["result"][index]["TTOTTPNo"],
      style: CustomFont.poppins12Regular(color: CustomColor.white),
    ));
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10.r,
        horizontal: 15.w
      ),
      margin: EdgeInsets.only(bottom: 13.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.r),
        color: CustomColor.green3,
      ),
      child: Row(
        children: [
          image(),
          SizedBox(width: 5.w),
          customTitle(),
        ],
      )
    );
  } 

  return Expanded(
    child: Container(
      padding: EdgeInsets.only(
        top: 25.h,
        left: 20.w,
        right: 20.w,
        bottom: 10.h
      ),
      decoration: BoxDecoration(
        color: CustomColor.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.r),
          topRight: Radius.circular(50.r),
        )
      ),
      width: double.infinity,
      child: Obx(()=> ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: (controllerHome.isLoadingCustomerTTH.value == true)
          ? 0
          : (controllerHome.filter.isNotEmpty)
            ? controllerHome.filter.length
            : controllerHome.jsonCustomerTTH["result"].length,
        itemBuilder: (context, index) => customCard(index: index),
      ))
    )
  );
}