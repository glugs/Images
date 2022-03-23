/*Note: better aspect ratio algorithms exist ...
 can you figure one out?
 */
//
//Global Variables
float imageX, imageY, imageWidth, imageHeigth, imageWidthRatio=0.0, imageHeightRatio=0.0;
float largerDimension, smallerDimension;
PImage pic;
Boolean widthLarger=false, heightLarger=false;
//
size(1000, 800); //fullScreen; displayWidth, displayHeight
//Population
pic = loadImage("f3a0c38b4ceb4f359fea2b43ab32a23c.jpg"); //Dimesions: width 800, height 600
//Note: Dimensions are found in the image file / Right Click / Properties / Details
//Find the larger dimenstion for aspect ratio
int picWidth = 564; //Mine is 800, do not copy this!!!
int picHeight = 1002; //Mine is 600, do not copy this!!!
if ( picWidth >= picHeight ) {
  largerDimension = picWidth;
  smallerDimension = picHeight;
  widthLarger = true;
} else {
  largerDimension = picHeight;
  smallerDimension = picWidth;
  heightLarger = true;
}//End Dimension Comparision
println(smallerDimension, largerDimension, widthLarger, heightLarger); //Verifying Variable details
//Note: single line IFs can be summarized to IF-ELSE or IF-ELSEIF-ELSE
if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
if ( heightLarger == true ) imageHeightRatio = largerDimension / largerDimension;
if ( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
println(imageWidthRatio, imageHeightRatio, smallerDimension/largerDimension, 600.0/800.0); //Verify variable values


//Note: println() also verifies decimal places, compiler will truncate
//Answers must be 1.0 and between 0 & 1 (decimal)
//Ratio 1.0 similar to style="width:100%" (websites)
//Ratio "0.75" similar to style="height:auto" (websites)
imageX = width*0;
imageY = height*0;
imageWidth = width*imageWidthRatio;
imageHeigth = height*imageHeightRatio;
if ( imageWidth > width ) println("ERROR: Image is too wide"); //Simple Display Checker
if ( imageHeigth > height ) println("ERROR: Image is too high"); //Simple Display Checker

//
//Rectangle Layout
rect(imageX, imageY, imageWidth, imageHeigth);
image(pic, imageX, imageY, imageWidth, imageHeigth);







































//f3a0c38b4ceb4f359fea2b43ab32a23c.jpg
