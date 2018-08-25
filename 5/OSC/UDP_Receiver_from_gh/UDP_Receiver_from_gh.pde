int portNum = 9996;

import oscP5.*;
import netP5.*;


// instance
OscP5 oscP5;

void setup(){
  // port
  oscP5 = new OscP5(this, portNum);

}


void draw(){

}


//OSCメッセージを受信した際に実行するイベント
void oscEvent(OscMessage msg) {

  int receiveMsg = msg.get(0).intValue() ;
  println(receiveMsg);

  /*
  //もしOSCメッセージが /mouse/position だったら
  if(msg.checkAddrPattern("/mouse/position")==true) {
    //最初の値をint方としてX座標に
    mouseLoc.x = msg.get(0).intValue();

    //次の値をint方としてY座標に
    mouseLoc.y = msg.get(1).intValue();
  }
  if(msg.checkAddrPattern("/mouse/cliked")==true) {
    //Bool値を読み込み
    clicked = msg.get(0).intValue();
    println("msg = " + clicked);
    print("*");
  }
  */

}
