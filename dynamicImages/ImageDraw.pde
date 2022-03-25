void imageDraw()
{
 //Rectantle Layout and Image Printing on Canvas
fill(black);
rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); //Image 1, landscape presentation
rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2); //Image 2, landscape presentation
image(pic1, rectXPic1+(rectXPic1 * 0.48), rectYPic1+(rectYPic2 *1/100), pic1WidthAdjusted, pic1HeightAdjusted);
//println("THIS IS AN IMAGE");
//image(pic2, rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2);
image(pic2, rectXPic2+(rectXPic2 * 1.3), rectYPic2+(rectYPic2 *1/100), pic2WidthAdjusted, pic2HeightAdjusted);
}//End ImageDraw
