// OpenCV cannot capture anymore since a iTunes or QuickTime update.
// It returns this error:
// SGIdle failed in icvGrabFrame_QT_Cam with error -1
// This example shows how to use standard video library to capture then
// pass the image to OpenCV.


import hypermedia.video.*;
import processing.video.*;

OpenCV opencv;
Capture video;
int captureW = 640;
int captureH = 480;

void setup ()
{
  size(captureW, captureH);

  opencv = new OpenCV( this );
  opencv.allocate(captureW, captureH);
  opencv.threshold(255); // Clears allocated image

  video = new Capture(this, captureW, captureH);
  video.start();
}

void draw ()
{
  if (video.available()) {
    video.read();
    opencv.copy(video);
  }

  background( opencv.image() );
}
