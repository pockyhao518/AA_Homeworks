document.addEventListener("DOMContentLoaded", function(){
    const canvasEl = document.getElementById('mycanvas');
    canvasEl.width = 500;
    canvasEl.height = 500;

    const ctx = canvasEl.getContext('2d');

    ctx.fillStyle = 'green';
    ctx.fillRect(10, 10, 500, 500);

    ctx.beginPath();
    ctx.arc(100, 100, 50, 0, 2*Math.PI, true);
    ctx.strokeStyle = 'red';
    ctx.lineWidth = 10;
    ctx.stroke();
    ctx.fillStyle = 'gray';
    ctx.fill();
});
