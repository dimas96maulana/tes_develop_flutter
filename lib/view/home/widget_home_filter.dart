part of '../view.dart';

Widget widgetHomeFilter(){
  ControllerHome controllerHome = Get.find();

  Widget customDropDown(){
    Widget icon()=> Container(
      height: 15.r,
      width: 15.r,
      padding: EdgeInsets.all(2.r),
      decoration: BoxDecoration(
        color: CustomColor.grey2,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Icon(
          Icons.home,
          color: CustomColor.white,
          size: 10.r,
        ),
      ),
    );
    Widget select()=> Expanded(
      child: Obx(()=> Text(
        controllerHome.selectName.value,
        style: CustomFont.poppins12Regular(color: CustomColor.black),
      )),
    );
    Widget iconSelect()=> Icon(
      Icons.keyboard_arrow_down,
      color: CustomColor.grey2,
      size: 20.r,
    );
    return Expanded(
      child: InkWell(
        onTap: (){
          controllerHome.isOpenDropDown.value = !controllerHome.isOpenDropDown.value;
        },
        child: Container(
          padding: EdgeInsets.all(5.r),
          decoration: BoxDecoration(
            border: Border.all(
              color: CustomColor.green1,
              width: 2.r
            )
          ),
          child: Row(
            children: [
              icon(),
              SizedBox(width: 5.w,),
              select(),
              iconSelect(),
            ],
          )
        ),
      ),
    );
  }

  Widget customButton(){
    Widget icon()=> Icon(
      Icons.card_giftcard,
      color: CustomColor.grey1,
      size: 20.r,
    );

    Widget title()=> Text(
      "Total Hadiah",
      style: CustomFont.poppins12Regular(color: CustomColor.grey1),
    );

    return Container(
      padding: EdgeInsets.all(5.r),
      decoration: BoxDecoration(
        color: CustomColor.orange1,
        borderRadius: BorderRadius.circular(5.r)
      ),
      child: Row(
        children: [
          icon(),
          SizedBox(width: 5.w,),
          title(),
        ],
      )
    );
  }

  return Container(
    padding: EdgeInsets.only(
      top: 15.h,
      left: 15.w,
      right: 15.w,
    ),
    height: 80.h,
    color: CustomColor.white,
    child: Row(
      children: [
        customDropDown(),
        SizedBox(width: 10.w,),
        customButton(),
      ],
    ),
  );
}