//Global Variables
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
PImage pic1, pic2;
color black=#000000;
float imageWidthRatioPic1=0.0, imageHeightRatioPic1=0.0, imageWidthRatioPic2=0.0, imageHeightRatioPic2=0.0;
Boolean widthPic1Larger=false, heightPic1Larger=false, widthPic2Larger=false, heightPic2Larger=false;
int largerPic1Dimension, smallerPic1Dimension, largerPic2Dimension, smallerPic2Dimension;
float pic1WidthAdjusted, pic1HeightAdjusted, pic2WidthAdjusted, pic2HeightAdjusted;
//
void setup()
{
  //Geometry
fullScreen(); //size(900, 680); displayWidth, displayHeight
//
//Landscape Presentation, not a square or portrait
//Populating Variables
pic1 = loadImage("f3a0c38b4ceb4f359fea2b43ab32a23c.jpg"); //Dimensions: width 1920, height 1280
pic2 = loadImage("b09e0e5d4684b59aa7de180492cf3a6c.jpg"); //Dimensions: width 4990, height 3327
//
//Aspect Ratio Calculation
int pic1Width = 564;
int pic1Height = 1002;
int pic2Width = 675;
int pic2Height = 1200;
//
//Choosing larger image dimension
if (pic1Width >= pic1Height) { //ID Larger Dimension: Landscape and Square
  largerPic1Dimension = pic1Width;
  smallerPic1Dimension = pic1Height;
  widthPic1Larger = true;
} else { //ID Larger Dimension: Portrait
  largerPic1Dimension = pic1Height;
  smallerPic1Dimension = pic1Width;
  heightPic1Larger = true;
} //End pic1 larger dimension ID
//
if (pic2Width >= pic2Height) {
  largerPic2Dimension = pic2Width;
  smallerPic2Dimension = pic2Height;
  widthPic2Larger = true;
} else {
  largerPic2Dimension = pic2Height;
  smallerPic2Dimension = pic2Width;
  heightPic2Larger = true;
} //End pic2 larger dimension ID
println (smallerPic1Dimension, largerPic1Dimension, smallerPic2Dimension, largerPic2Dimension); //Verifying Variable Details 
//
//Calculating Aspect Ratios
//Note:single line IF's can be summarized to IF-ELSE or IFELSEIF-ELSE
if (widthPic1Larger == true) imageWidthRatioPic1 = float(largerPic1Dimension) / float(largerPic1Dimension);
if (widthPic1Larger == true ) imageHeightRatioPic1 = float(smallerPic1Dimension) / float(largerPic1Dimension);
if ( heightPic1Larger == true) imageWidthRatioPic1 = float(smallerPic1Dimension) / float(largerPic1Dimension);
if ( heightPic1Larger == true) imageHeightRatioPic1 = float(largerPic1Dimension) / float(largerPic1Dimension);
if ( widthPic2Larger == true ) imageWidthRatioPic2 = float(largerPic2Dimension) / float(largerPic2Dimension);;
if ( widthPic2Larger == true ) imageHeightRatioPic2 = float(smallerPic2Dimension) / float(largerPic2Dimension);
if ( heightPic2Larger == true ) imageWidthRatioPic2 = float(smallerPic2Dimension) / float(largerPic2Dimension);
if ( heightPic2Larger == true ) imageHeightRatioPic2 = float(largerPic2Dimension) / float(largerPic2Dimension);
println (imageWidthRatioPic1, imageHeightRatioPic1, imageWidthRatioPic2, imageHeightRatioPic2); 
//Verifying Variable Details (Ratios)
//
//Using ratios to change the image, width, and height properties of rectangle
rectXPic1 = displayWidth*1/4;
rectYPic1 = displayHeight*0;
rectWidthPic1 = displayWidth*1/2;
rectHeightPic1 = displayHeight*1/2;
rectXPic2 = displayWidth*1/8;
rectYPic2 = displayHeight*1/2;
rectWidthPic2 = displayWidth*6/8;
rectHeightPic2 = displayHeight*1/2;
//
//Adjusted widths and heights to rectangle layouts, final aspect ratio calculations
pic1WidthAdjusted = rectWidthPic1 * imageWidthRatioPic1;
pic1HeightAdjusted = rectHeightPic1 * imageHeightRatioPic1;
pic2WidthAdjusted = rectWidthPic2 * imageWidthRatioPic2;
pic2HeightAdjusted = rectHeightPic2 * imageHeightRatioPic2;
println(pic1Width, pic1Height, pic2Width, pic2Height);
println( pic1WidthAdjusted, pic1HeightAdjusted, pic2WidthAdjusted, pic2HeightAdjusted);
//
}//End Setup
//
void draw() 
{//Note:DRAW loop repeats 60 times/second, static images should be in SETUP
  //Rectantle Layout and Image Printing on Canvas
fill(black);
rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); //Image 1, landscape presentation
rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2); //Image 2, landscape presentation
image(pic1, rectXPic1+(rectXPic1 * 0.48), rectYPic1+(rectYPic2 *1/100), pic1WidthAdjusted, pic1HeightAdjusted);
//println("THIS IS AN IMAGE");
//image(pic2, rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2);
image(pic2, rectXPic2+(rectXPic2 * 1.3), rectYPic2+(rectYPic2 *1/100), pic2WidthAdjusted, pic2HeightAdjusted);
}//End draw
//
void keyPressed() 
{
  
}//End Keypressed
//
void mousPressed()
{
}//End mousepressed







/*
//Variables
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
PImage pic1, pic2;
color black=#000000;
background(#111111);
//
//Geometry
fullScreen(); //size(900, 680); displayWidth, displayHeight
//Landscape Presentation, not a square or portrait
//
//Populating Variables
pic1 = loadImage("f3a0c38b4ceb4f359fea2b43ab32a23c.jpg"); //Dimensions: width 1920, height 1280
pic2 = loadImage("b09e0e5d4684b59aa7de180492cf3a6c.jpg"); //Dimensions: width 4990, height 3327
//
//Aspect Ratio Calculation
int pic1Width = 564;
int pic1Height = 1002;
int pic2Width = 675;
int pic2Height = 1200;
int largerPic1Dimension, smallerPic1Dimension;
int largerPic2Dimension, smallerPic2Dimension;
float imageWidthRatioPic1=0.0, imageHeightRatioPic1=0.0, imageWidthRatioPic2=0.0, imageHeightRatioPic2=0.0;
Boolean widthPic1Larger=false, heightPic1Larger=false, widthPic2Larger=false, heightPic2Larger=false;
//
if (pic1Width >= pic1Height) { //ID Larger Dimension: Landscape and Square
  largerPic1Dimension = pic1Width;
  smallerPic1Dimension = pic1Height;
  widthPic1Larger = true;
} else { //ID Larger Dimension: Portrait
  largerPic1Dimension = pic1Height;
  smallerPic1Dimension = pic1Width;
  heightPic1Larger = true;
} //End pic1 larger dimension ID
//
if (pic2Width >= pic2Height) {
  largerPic2Dimension = pic2Width;
  smallerPic2Dimension = pic2Height;
  widthPic2Larger = true;
} else {
  largerPic2Dimension = pic2Height;
  smallerPic2Dimension = pic2Width;
  heightPic2Larger = true;
} //End pic2 larger dimension ID
println (smallerPic1Dimension, largerPic1Dimension, smallerPic2Dimension, largerPic2Dimension); //Verifying Variable Details 
//Calculating Aspect Ratios
if (widthPic1Larger == true) imageWidthRatioPic1 = float(largerPic1Dimension) / float(largerPic1Dimension);
if (widthPic1Larger == true ) imageHeightRatioPic1 = float(smallerPic1Dimension) / float(largerPic1Dimension);
if ( heightPic1Larger == true) imageWidthRatioPic1 = float(smallerPic1Dimension) / float(largerPic1Dimension);
if ( heightPic1Larger == true) imageHeightRatioPic1 = float(largerPic1Dimension) / float(largerPic1Dimension);
if ( widthPic2Larger == true ) imageWidthRatioPic2 = float(largerPic2Dimension) / float(largerPic2Dimension);;
if ( widthPic2Larger == true ) imageHeightRatioPic2 = float(smallerPic2Dimension) / float(largerPic2Dimension);
if ( heightPic2Larger == true ) imageWidthRatioPic2 = float(smallerPic2Dimension) / float(largerPic2Dimension);
if ( heightPic2Larger == true ) imageHeightRatioPic2 = float(largerPic2Dimension) / float(largerPic2Dimension);
println (imageWidthRatioPic1, imageHeightRatioPic1, imageWidthRatioPic2, imageHeightRatioPic2); //Verifying Variable Details (Ratios)
//Using ratios to change the image, width, and height properties of rectangle
rectXPic1 = displayWidth*1/4;
rectYPic1 = displayHeight*0;
rectWidthPic1 = displayWidth*1/2;
rectHeightPic1 = displayHeight*1/2;
rectXPic2 = displayWidth*1/8;
rectYPic2 = displayHeight*1/2;
rectWidthPic2 = displayWidth*6/8;
rectHeightPic2 = displayHeight*1/2;
//
//Adjusted widths and heights to rectangle layouts, final aspect ratio calculations
float pic1WidthAdjusted, pic1HeightAdjusted, pic2WidthAdjusted, pic2HeightAdjusted;
pic1WidthAdjusted = rectWidthPic1 * imageWidthRatioPic1;
pic1HeightAdjusted = rectHeightPic1 * imageHeightRatioPic1;
pic2WidthAdjusted = rectWidthPic2 * imageWidthRatioPic2;
pic2HeightAdjusted = rectHeightPic2 * imageHeightRatioPic2;
println(pic1Width, pic1Height, pic2Width, pic2Height);
println( pic1WidthAdjusted, pic1HeightAdjusted, pic2WidthAdjusted, pic2HeightAdjusted);
//
//Rectantle Layout and Image Printing on Canvas
fill(black);
rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); //Image 1, landscape presentation
rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2); //Image 2, landscape presentation
image(pic1, rectXPic1+(rectXPic1 * 0.48), rectYPic1+(rectYPic2 *1/100), pic1WidthAdjusted, pic1HeightAdjusted);
//println("THIS IS AN IMAGE");
//image(pic2, rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2);
image(pic2, rectXPic2+(rectXPic2 * 1.3), rectYPic2+(rectYPic2 *1/100), pic2WidthAdjusted, pic2HeightAdjusted);
*/
