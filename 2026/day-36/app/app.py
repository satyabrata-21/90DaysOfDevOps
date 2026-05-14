# app.py

from flask import Flask, render_template_string

app = Flask(__name__)

HTML_PAGE = """
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>God Images App</title>

    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family: Arial, sans-serif;
        }

        body{
            height:100vh;
            display:flex;
            justify-content:center;
            align-items:center;
            text-align:center;

            background-image: url('https://images.unsplash.com/photo-1506744038136-46273834b3fb');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        .overlay{
            background: rgba(0,0,0,0.5);
            padding:40px;
            border-radius:20px;
            color:white;
            backdrop-filter: blur(5px);
        }

        h1{
            font-size:50px;
            margin-bottom:20px;
        }

        p{
            font-size:20px;
        }

        .btn{
            margin-top:20px;
            padding:12px 25px;
            border:none;
            border-radius:10px;
            background:#ff9800;
            color:white;
            font-size:18px;
            cursor:pointer;
            transition:0.3s;
        }

        .btn:hover{
            background:#e68900;
        }
    </style>
</head>
<body>

    <div class="overlay">
        <h1>🙏 Welcome to my World 🙏</h1>
        <p>Flask App Running Successfully with Beautiful Background</p>        
        <button class="btn">Satyabrata Behera</button>
    </div>

</body>
</html>
"""

@app.route("/")
def home():
    return render_template_string(HTML_PAGE)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)