library projetgroupev1;
import 'dart:html';
import 'dart:math';
import 'dart:async';
part 'triangle.dart';
part 'cercle.dart';
part 'ligne.dart';


Timer timer;
draw(context,lignes) {
  clear() {
    context.fillStyle = "#ffffff";
    context.fillRect(0, 0, context.canvas.width, context.canvas.height);
  }
  clear();
  for (var i = 0; i <lignes.length; i++) 
  {(lignes)[i].draw();}
  
}

drawPath(context,path) {
  for (var i = 0; i <path.length; i++) 
  {(path)[i].draw();}
  
}

List attente(){
  var cerclesAtt = new List(3);
  var c1 = new Cercle(175, 385);
  var c2 = new Cercle(220, 385);
  var c3 = new Cercle(265, 385);
  cerclesAtt[0]=c1;
  cerclesAtt[1]=c2;
  cerclesAtt[2]=c3;
  return(cerclesAtt);
}

List attToSer1(){
  List res= new List(712);
  num j=0;
  for (var i = 445; i <524; i++) { //79
    res[j] = new Cercle(i, 385);
  j++;
  }
  for (var i = 385; i>289; i--) {   //100
    res[j] = new Cercle(524, i);
   j++;
  }
  for (var i = 524; i <615; i++) {   //91
    res[j] = new Cercle(i, 289);
  j++;
  }
  res[j-1].delete();
  print(res[j-1].gety());
  for (var i = 289; i <381; i++) {   //92 
    res[j] = new Cercle(845, i);
  j++;
  }
  for (var i = 845; i<922; i++) {    //77
    res[j] = new Cercle(i, 381);
   j++;
  }
  res[j-1].delete();
  for (var i = 381; i>314; i--) {    //67
    res[j] = new Cercle(1160, i);
   j++;
  }
  for (var i = 1160; i<1317; i++) {    //157
    res[j] = new Cercle(i, 314);
   j++;
  }
  for (var i = 314; i>275; i--) {    //39
    res[j] = new Cercle(1317, i);
   j++;
  }
  res[j-1].delete();
  return (res);
}

List attToSer2(){
  List res= new List(783);
  num j=0;
  
  for (var i = 445; i <524; i++) { //79
    res[j] = new Cercle(i, 385);
  j++;
  }
  for (var i = 385; i<489; i++) {   //104
    res[j] = new Cercle(524, i);
   j++;
  }
  for (var i = 524; i <615; i++) {   //91
    res[j] = new Cercle(i, 489);
  j++;
  }
  res[j-1].delete();
  for (var i = 845; i <855; i++) {   //20
    res[j] = new Cercle(i, 489);
  j++;
  }
  for (var i = 489; i>381; i--) {    //108
    res[j] = new Cercle(855, i);
   j++;
  }
  for (var i = 855; i<922; i++) {    //67
    res[j] = new Cercle(i, 381);
   j++;
   res[j-1].delete();
  }
  for (var i = 381; i>314; i--) {    //67
    res[j] = new Cercle(1160, i);
   j++;
  }
  for (var i = 1160; i<1317; i++) {    //157
    res[j] = new Cercle(i, 314);
   j++;
  }
  for (var i = 314; i>275; i--) {    //39
    res[j] = new Cercle(1317, i);
   j++;
  }
  res[j-1].delete();
  return (res);
}

void dessin(List l, num i){
  if(i<698){
    l[i].delete();
    l[i].draw();
  }
  else
  {
  timer.cancel();
  }
}
  voidRun(num vitesse, List parcour){
    num i=0;
    num j=0;
    timer = new Timer.periodic(new Duration(milliseconds:vitesse), (Timer timer) {  
      dessin(parcour,i++);
    });
    
   /* timer = new Timer.periodic(new Duration(milliseconds:45), (Timer timer) {  
      dessin(attToSer2(),j++);
    });*/
  }
  
