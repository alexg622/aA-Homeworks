document.addEventListener("DOMContentLoaded", function(){
  var cav = document.getElementById("mycanvas")
  cav.width = 500
  cav.height = 500

  var ctx = cav.getContext('2d')
  ctx.fillStyle = 'blue'
  ctx.fillRect(0, 0, 500, 500)

  ctx.beginPath();
  ctx.arc(100, 100, 20, 0, 2 * Math.PI, true)
  ctx.strokeStyle = "balck"
  ctx.lineWidth = 5;
  ctx.stroke()
  ctx.fillStyle = 'red'
  ctx.fill()

});
