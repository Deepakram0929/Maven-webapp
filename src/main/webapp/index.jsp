<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>She Said Yes! 💖</title>
  <style>
    body {
      background: linear-gradient(to top right, #fbc2eb, #a6c1ee);
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      text-align: center;
      color: #fff;
      margin: 0;
      padding: 0;
      overflow: hidden;
    }

    .container {
      padding: 60px 20px;
    }

    h1 {
      font-size: 3.5rem;
      margin-bottom: 20px;
    }

    p {
      font-size: 1.5rem;
      max-width: 700px;
      margin: 0 auto 30px auto;
    }

    .heart {
      font-size: 6rem;
      animation: pulse 1s infinite;
    }

    @keyframes pulse {
      0% { transform: scale(1); color: #ff6ec4; }
      50% { transform: scale(1.1); color: #d500f9; }
      100% { transform: scale(1); color: #ff6ec4; }
    }

    .confetti {
      position: fixed;
      width: 100%;
      height: 100%;
      pointer-events: none;
      z-index: 1;
    }

    .signature {
      margin-top: 40px;
      font-size: 1.2rem;
      color: #fff;
      opacity: 0.9;
    }
  </style>
</head>
<body>
  <canvas class="confetti" id="confetti"></canvas>
  <div class="container">
    <div class="heart">💞</div>
    <h1>She Said YES! 💍</h1>
    <p>
      Thank you, Sinchi.<br/>
      You’ve made me the happiest person in the world.<br/>
      Our journey together starts now, and I can't wait to live every moment with you. 💖
    </p>
    <div class="signature">With love, <strong>Deepak 💫</strong></div>
  </div>

  <script>
    // Simple Confetti Animation 🎉
    const canvas = document.getElementById('confetti');
    const ctx = canvas.getContext('2d');
    let pieces = [];
    let numberOfPieces = 100;

    function resize() {
      canvas.width = window.innerWidth;
      canvas.height = window.innerHeight;
    }

    window.addEventListener('resize', resize);
    resize();

    function createPiece() {
      return {
        x: Math.random() * canvas.width,
        y: Math.random() * canvas.height - canvas.height,
        size: Math.random() * 10 + 5,
        speed: Math.random() * 3 + 2,
        color: `hsl(${Math.random() * 360}, 100%, 60%)`
      };
    }

    for (let i = 0; i < numberOfPieces; i++) {
      pieces.push(createPiece());
    }

    function update() {
      ctx.clearRect(0, 0, canvas.width, canvas.height);
      for (let piece of pieces) {
        piece.y += piece.speed;
        if (piece.y > canvas.height) {
          Object.assign(piece, createPiece());
          piece.y = -piece.size;
        }
        ctx.fillStyle = piece.color;
        ctx.fillRect(piece.x, piece.y, piece.size, piece.size);
      }
      requestAnimationFrame(update);
    }

    update();
  </script>
</body>
</html>
