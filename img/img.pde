//global
float imageX, imageY, imageWidth, imageHeight, picWidthAdjusted, picHeightAdjusted, imageWidthRatio=0.0, imageHeightRatio=0.0;
float imageLargerDimension, imageSmallerDimension;
PImage pic1, pic2; 
boolean widthLarger=false, heightLarger=false;
void setup() {

  size( 800, 650);
  //
  //pop
  pic = loadImage("img1/madeline.png");
  //note: dimensions are fouund in img file.
  //alogrithm: find the larger dimensions for aspect ratio
  int picWidth= 400;
  int picHeight = 400;
  if (picWidth >= picHeight) {
    imageLargerDimension = picWidth;
    imageSmallerDimension = picHeight;
    widthLarger = true;
  } else {
    imageLargerDimension = picWidth;
    imageSmallerDimension = picHeight;
    heightLarger = true;
  } 
  println(imageSmallerDimension, imageLargerDimension, widthLarger, heightLarger);
  //
  //aspect ratio
  //note: single line IFs can ve summarized into IF-ELSEor if-else if else
  // my hands are tired lol so is my brain 
  if (widthLarger == true)imageWidthRatio = imageLargerDimension/ imageLargerDimension;
  if (widthLarger == true)imageHeightRatio = imageSmallerDimension/imageLargerDimension;
  if (heightLarger == true)imageWidthRatio = imageSmallerDimension/imageLargerDimension;
  if ( heightLarger == true ) imageHeightRatio = imageLargerDimension / imageLargerDimension;
  //
  imageX = width*0;
  imageY = height*0;
  imageWidth= width-1;
  imageHeight= height-1;
  // image will be smaller cause aspect ratio 
picWidthAdjusted= imageWidth * imageWidthRatio;
picHeightAdjusted  = imageHeight * imageHeightRatio;
println(imageX, imageY, picWidthAdjusted, picHeightAdjusted);
}


void draw(){//
rect(imageX, imageY, imageWidth, imageHeight);
image(pic, imageX, imageY, imageWidth, imageHeight);
image(pic, imageX, imageY, picWidthAdjusted, picHeightAdjusted);
//image(
}

//void keyPressed(){}

//void mousePressed(){}

//copy to tism
