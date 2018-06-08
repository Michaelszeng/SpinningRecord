import ddf.minim.*;  //at the very top of your sketch
Minim minim;  //as a member variable
AudioPlayer song;  //as a member variable
PImage pictureOfRecord;  //as member variable
int x = 0;
void setup(){
minim = new Minim(this);  //in the setup method
song = minim.loadFile("awesomeTrack.mp3", 512);//in the setup method
size(768, 576);
pictureOfRecord= loadImage("record.jpg");  //in setup method  
}
void draw(){
if (mousePressed) {
   rotateImage(pictureOfRecord, x);
   x = x+999999999;
   song.play();
   image(pictureOfRecord, 0, 0);//in draw method
}
else {
  song.pause();
}
}
void rotateImage(PImage image, int amountToRotate) {
       translate(width/2, height/2);
       rotate(amountToRotate*TWO_PI/360);
       translate(-image.width/2, -image.height/2);
}
