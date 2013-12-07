part of projetgroupev1;

class ligne{
  
  num xDep;
  num yDep;
  num xArr;
  num yArr;
  
  CanvasElement canvas;
  CanvasRenderingContext2D context;


ligne (this.xDep,this.yDep,this.xArr,this.yArr){
  
  canvas = document.querySelector('#canvas');
  context = canvas.getContext('2d');

}

draw(){
  
  context.moveTo(xArr, yArr);
  context.lineTo(xDep, yDep);
  context.lineWidth = 1;
  context.stroke();
}
}