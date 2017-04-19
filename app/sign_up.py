from flask import Flask, redirect, url_for, request, render_template
app = Flask(__name__)

"""
@app.route('/success/<name>')
def success(name):
   return 'Welcome %s, your details have been successfully saved\n' % name
"""

@app.route('/login',methods = ['POST', 'GET'])
def login():
   if request.method == 'POST':
      fullname = request.form['fullname']
      username = request.form['user']
      email = request.form['email']
      password = request.form['pass']
      file1 = open("user_data.txt", "a+")
      file1.write("FULLNAME=" + fullname + ";" + "USERNAME=" + username + "EMAIL=" + email + "PASSWORD=" + password + "\n")
      file1.close();
      return render_template("saved.html", name = fullname)
      #return redirect(url_for('success',name = username))
   else:
      return render_template("failure.html")

if __name__ == '__main__':
   app.run(debug = True)
