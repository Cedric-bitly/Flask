# import the flask framework
from flask import *


# Below we create a web server based application
app = Flask(__name__)

# below we create the home route.
# Routing: This is mapping/connecting different resources to different functions. We do this by the help of a decorator.
@app.route("/api/home")
def home():
    return  jsonify({"message" : "Home Route accessed"})


# below is the products' route
@app.route("/api/products")
def products():
    return jsonify({"message" : "Welcome to the products route"})


# Below is a route for addition.
@app.route("/api/calc", methods=["POST"])
def calculator():
    if request.method == "POST":
        number1 = request.form["number1"]
        number2 = request.form["number2"]
        sum = int(number1) + int(number2)

        return jsonify({"The answer is" : sum})



# create a route that is able to calculate the simple interest given the pricipal as 20000, rate as 7% and time as 8 years.
@app.route("/api/calculate-simple-interest", methods=["POST"])
def calculate_simple_interest():
    principal = 20000
    rate = 7
    time = 8
    
    simple_interest = (principal * rate * time) / 100
    total_amount = principal + simple_interest
    
    return jsonify({
        'principal': principal,
        'rate': rate,
        'time': time,
        'simple_interest': simple_interest,
        'total_amount': total_amount
    })






















# Below we run the application
app.run(debug=True)