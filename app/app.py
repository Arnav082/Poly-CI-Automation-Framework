from flask import Flask, render_template

app = Flask(__name__)

# A simple list acting as our database to keep the app manageable
cars_data = [
    {
        "brand": "Porsche",
        "model": "911 GT3 RS",
        "description": "A high-performance sports car built purely for the track, featuring naturally aspirated power.",
        "image": "https://a.storyblok.com/f/322327/2622x716/33e9e4883a/911-gt3-rs-side.png/m/2500x683/smart/filters:format(avif)?dpl=dpl_FFCXzWQk3dMf7U5zNBWvpbzr2JKF?q=80&w=800&auto=format&fit=crop"
    },
    {
        "brand": "Aston Martin",
        "model": "Vantage",
        "description": "A masterpiece of British engineering, blending aggressive styling with raw twin-turbo V8 speed.",
        "image": "https://images.unsplash.com/photo-1603584173870-7f23fdae1b7a?q=80&w=800&auto=format&fit=crop"
    },
    {
        "brand": "McLaren",
        "model": "720S",
        "description": "Lightweight, highly aerodynamic, and ferociously fast with its carbon fiber structure.",
        "image": "https://www.exoticcarhacks.com/wp-content/uploads/2024/04/pXcL3WiQ.jpeg?q=80&w=800&auto=format&fit=crop"
    }
]

@app.route("/")
def home():
    # render_template looks inside the 'templates' folder for index.html
    return render_template("index.html", cars=cars_data)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)