 
int wi=640;
int hi=480;
//int[]={1,2,3,4,5,6,7,2};

void setup() {
  size(wi, hi, P3D);  // Size must be the first statement
  stroke(0xda550020);     // Set line drawing color to white
  frameRate(20);
  background(255); 
 drawCircle();
}
void drawCircle()
{

  smooth();
  float ptCount=300;
  float xoffset=400;
  float yoffset=400;
  float zoffset=-100;
  float r=250;
  float incr= ( 2*PI)/ptCount;
  float incrb=( 2*PI)/ptCount ;
 
 
  for (float a=0; a<ptCount; a++)
  {

  
    float angle=incr*a;
    //float  x =xoffset+ (r*cos(angle));
    /// float  y = yoffset+ (r*sin(angle)); 
    for (float b=0; b<ptCount; b++)
    {
     
       float x =xoffset-(r/2)+ (r * cos(incr*a) * sin(incr*b));
       float y =yoffset-(r/2)+( r * sin(incr*a) * sin(incr*b));
       float z =zoffset-(r/2)+(r * cos(incrb*b));
     
    /*  float x =xoffset-(r/2)+(r * cos(incrb*b ));
      float y =yoffset-(r/2)+( r * sin(incr*a ) * sin(incr*b));
      float z =zoffset-(r/2)+(r * cos(incr*a ) * sin(incr*b ));*/
      ;
      point(x, y, z);
    }
  }
}

 


void draw() { 
  //background(255);
  //drawCircle();
} 

