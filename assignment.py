# import the flask framework
from flask import *
import os

# import the pymysql module - it helps us to create a connection between python flask and mysql database
import pymysql


# create a flask application and give it a name
app = Flask(__name__)

#configure the location to where your product images will be saved on your application.
app.config["UPLOAD_FOLDER"] = "static/images"

# below is the smartphones route
@app.route("/api/smartphones", methods=["POST"])
def add_smartphone():
    if request.method == "POST":
        # extract the different details entered on the forms
        name = request.form["name"]
        brand = request.form["brand"]
        model = request.form["model"]
        storage = request.form["storage"]
        ram = request.form["ram"]
        battery = request.form["battery"]
        price = request.form["price"]
        stock = request.form["stock"]

        #for the smartphone photo, we shall fetch it from files as shown below.
        photo = request.files["photo"]

        #extract the filename of the phone photo
        filename = photo.filename
        #by use of the os module we can extract the file path where the image is currently saved
        photo_path = os.path.join(app.config["UPLOAD_FOLDER"], filename)
        # print("This is the photo path: ", photo_path)

        #save the smartphone_photo image into the new location
        photo.save(photo_path)

        #by use of the print function lets print all those details sent with the request
        #print(name, brand, model, storage, ram, battery, price, stock, photo)

        # establish a connection between flask/python and mysql
        connection = pymysql.connect(host="localhost", user="root", password="",database="online")

        # create a cursor to execute the sql queries
        cursor = connection.cursor()

        #structure an sql to insert the details received from the form
        # The %s is a placeholder, it stands in place of actual values to be replaced later on
        sql = "INSERT INTO smartphones(name,brand,model,storage,ram,battery,price,stock,photo) VALUES(%s, %s, %s, %s, %s, %s, %s, %s, %s)"

        # create a tuple that will hold all the data gotten from the form
        data = (name, brand, model, storage, ram, battery, price, stock, filename)

        # by use of the cursor, execute the sql as you replace with the actual values
        cursor.execute(sql, data)

        # commit the changes to the database
        connection.commit()

        return jsonify({"message": "Smartphone added successfully"})
    
    # below is the smartphones route
@app.route("/api/novels", methods=["POST"])
def add_novel():
    if request.method == "POST":
        # extract the different details entered on the forms
        name = request.form["name"]
        author = request.form["author"]
        publisher = request.form["publisher"]
        publicationyear = request.form["publicationyear"]
        price = request.form["price"]
        stock = request.form["stock"]

        #for the smartphone photo, we shall fetch it from files as shown below.
        photo = request.files["photo"]

        #extract the filename of the phone photo
        filename = photo.filename
        #by use of the os module we can extract the file path where the image is currently saved
        photo_path = os.path.join(app.config["UPLOAD_FOLDER"], filename)
        # print("This is the photo path: ", photo_path)

        #save the smartphone_photo image into the new location
        photo.save(photo_path)

        #by use of the print function lets print all those details sent with the request
        #print(name, brand, model, storage, ram, battery, price, stock, photo)

        # establish a connection between flask/python and mysql
        connection = pymysql.connect(host="localhost", user="root", password="",database="online")

        # create a cursor to execute the sql queries
        cursor = connection.cursor()

        #structure an sql to insert the details received from the form
        # The %s is a placeholder, it stands in place of actual values to be replaced later on
        sql = "INSERT INTO novels(name,author,publisher,publicationyear,price,stock,photo) VALUES(%s, %s, %s, %s, %s, %s, %s)"

        # create a tuple that will hold all the data gotten from the form
        data = (name, author, publisher, publicationyear, price, stock, filename)

        # by use of the cursor, execute the sql as you replace with the actual values
        cursor.execute(sql, data)

        # commit the changes to the database
        connection.commit()

        return jsonify({"message": "Novel registered successfully"})
    

    


# Below we run the application
app.run(debug=True)