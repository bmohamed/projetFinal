part of projetgroupev1;

class Cercle {

  num x;
  num y;
  num r=15;


  CanvasElement canvas;
  CanvasRenderingContext2D context;

  Cercle(this.x, this.y) {

    canvas = document.querySelector('#canvas');
    context = canvas.getContext('2d');

  }

  draw() {
    context.beginPath();
    context.fillStyle = '#009000';
    context.strokeStyle = '#ffffff';
    context.lineWidth   = 0;
    context.arc(this.x, this.y, this.r, 0, PI * 2, true);
    context.stroke();
    context.closePath();
    context.fill();
  }
  
  delete(){
    context.beginPath();
    context.fillStyle = '#ffffff';
    context.strokeStyle = '#ffffff';
    context.lineWidth   = 0;
    context.arc(this.x, this.y, this.r+2, 0, PI * 2, true);
    context.stroke();
    context.closePath();
    context.fill();
  }
  
  num getx(){  return (this.x);}
  num gety(){  return (this.y);}
}