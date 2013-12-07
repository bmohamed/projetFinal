part of projetgroupev1;

class Triangle{
  num x;
  num y;
  
  CanvasElement canvas;
  CanvasRenderingContext2D context;
  
  String colorCode;
  
  Triangle(this.x,this.y)
  {
    
    canvas = document.querySelector('#canvas');
    context = canvas.getContext('2d');
    
  }
  
  draw() {
    
    context.fillStyle   = '#009000'; // Green
    context.strokeStyle = '#000000'; // black
    context.lineWidth   = 1;
    context.beginPath();
   /* context.moveTo(24, 20); // give the (x,y) coordinates
    context.lineTo(10, 40);
    context.lineTo(40, 40);
    context.lineTo(24, 20);*/
    context.moveTo(x, y); // give the (x,y) coordinates
    context.lineTo(x-4, y+10);
    context.lineTo(y+4, y+10);
    context.lineTo(x, y);
    context.fill();
    context.stroke();
    context.closePath();

  }
}