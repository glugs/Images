//Variables
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
PImage pic1, pic2;
//
//Geometry
fullScreen();
//
//Populating Variables
pic1= loadImage("f3a0c38b4ceb4f359fea2b43ab32a23c.jpg");//dimensioons: width:564, height:1002
pic2= loadImage("b09e0e5d4684b59aa7de180492cf3a6c.jpg");// dimensions: width:675, height:1200
//
//Aspect Ratio Calculations(NOTE:Mine not yours)
int pic1Width=564;
int pic1Height=1002;
int pic2Height=675;
int pic2Height=1200;
int largerPicDimension, smallerDimension;
Boolean widthPic1Larger;
//
if(pic1width >=pic1Height){ }else{}// ID Larger Dimension: Landscape and Square
largerPic1Dimension= pic1Width;
smallerPic1Dimension= pic1Height ;
widthLarger=true;
 }else{//ID Larger Dimension:Portrait
 largerPic1Dimension= pic1Width;
 smallerPic1Dimension= pic1Height ;
 widthLarger=true;
 }
//
if () {}else{}//End pic2 larger dimension ID
//
rectXPic1 = displayWidth*1/4;
rectYPic1 = displayHeight*0;
rectWidthPic1 = displayWidth*1/2;
rectHeightPic1 =displayHeight*1/2 ;
rectXPic2 = displayWidth*1/8;
rectYPic2 = displayHeight*1/2;
rectWidthPic2 =displayWidth*6/8 ;
rectHeightPic2 =displayHeight*1/2;
//
//Rectangle Layout & Image Printing on Canvas
rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1);//Image 1, landscape presentation
rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2);//Image 2, landscape, presentation
image(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1);
image(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2);
