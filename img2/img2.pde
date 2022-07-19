//global
float imageX1, imageY1,ImageWidth1,imageHeight1,imagelargerdimension1,imageSmallerdimension1, imageWidthratio1=0.0,imageHeightRatio1=0.0;
float imageX2, imageY2,ImageWidth2,imageHeight2,imagelargerdimension2,imageSmallerdimension2, imageWidthRatio2=0.0, imageHeightRatio2=0.0;
PImage pic1, pic2; 
boolean widthLarger1=false, heightLarger1=false;
boolean widthLarger2=false, heightLarger2=false;
void setup() {

  size( 800, 650);
  //
  //pop
  pic1 = loadImage("img1/madeline.png");// 400X400
  pic2 = loadImage("img1/Celeste.jpg");//512X512
  //note: dimensions are fouund in img file.
  //alogrithm: find the larger dimensions for aspect ratio
  int picWidth1= 400;
  int picHeight1 = 400;
  int picWidth2 = 512;
  int picHeight = 512;
  if (picWidth1 >= picHeight1) {
    imagelargerdimension1 = picWidth1;
    imageSmallerdimension1 = picHeight1;
    widthLarger1 = true;
  } else {
    imagelargerdimension1 = picWidth1;
    imageSmallerdimension1 = picHeight1;
    heightLarger1 = true;
  } 
  println(imageSmallerdimension1, imagelargerdimension1, widthLarger1, heightLarger1);
  //
  //aspect ratio
  //note: single line IFs can ve summarized into IF-ELSEor if-else if else
  // my hands are tired lol so is my brain 
  if (widthLarger1 == true)imageWidthratio1 = imagelargerdimension1/ imagelargerdimension1;
  if (widthLarger1 == true)imageHeightRatio1 = imageSmallerdimension1/imagelargerdimension1;
  if (heightLarger1 == true)imageWidthratio1 = imageSmallerdimension1/imagelargerdimension1;
  if ( heightLarger1 == true ) imageHeightRatio1 = imagelargerdimension1 / imagelargerdimension1;
  //
  imageX1 = width*0;
  imageY1 = height*0;
  ImageWidth1= width-1;
  imageHeight1= (height-1)*1/2;
  imageX2 = width*0;
  imageY2 = height*0;
  ImageWidth2= width-1;
  imageHeight2= (height-1)*1/2;
  // image will be smaller cause aspect ratio 
picWidthAdjusted1= imageWidth * imageWidthRatio;
picHeightAdjusted  = imageHeight * imageHeightRatio;
println(imageX, imageY, picWidthAdjusted, picHeightAdjusted);
}


void draw(){//
rect(imageX1, imageY1, imageWidth1, imageHeight1); //top
rect(imageX2, imageY2, imageWidth2, imageHeight2); 
image(pic1, imageX, imageY, imageWidth, imageHeight);
image(pic2, imageX, imageY, picWidthAdjusted, picHeightAdjusted);
//image(
}

//void keyPressed(){}

//void mousePressed(){}

//copy to tism
