<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Profile Card</title>
  <style>
    body {
      margin: 0;
      font-family: 'Segoe UI', sans-serif;
      background: linear-gradient(135deg, #89f7fe, #66a6ff);
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .card {
      background: white;
      border-radius: 15px;
      padding: 30px;
      width: 300px;
      text-align: center;
      box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
    }

    .card img {
      width: 100px;
      height: 100px;
      border-radius: 50%;
      margin-bottom: 15px;
      border: 4px solid #66a6ff;
    }

    .card h2 {
      margin: 10px 0 5px;
      color: #333;
    }

    .card p {
      margin: 5px 0 20px;
      color: #777;
    }

    .btn {
      display: inline-block;
      background: #66a6ff;
      color: white;
      padding: 10px 20px;
      border-radius: 25px;
      text-decoration: none;
      font-weight: bold;
      transition: 0.3s;
    }

    .btn:hover {
      background: #558de8;
    }
  </style>
</head>
<body>

  <div class="card">
    <img src="https://i.imgur.com/2DhmtJ4.jpg" alt="Profile Image">
    <h2>Deepak DR</h2>
    <p>Full Stack Developer & AWS Devops Engineer </p>
    <a href="mailto:deepak@example.com" class="btn">Contact Me</a>
  </div>

</body>
</html>
