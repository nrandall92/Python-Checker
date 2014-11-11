from flask import Flask, render_template, request
#---needed for system calls ---
#import subprocess

app = Flask(__name__)

# Configuration

@app.route('/home', methods=['GET', 'POST'])
def mainIndex():
  
  
  return render_template('home.html')
    
   

  
@app.route('/login', methods=['GET', 'POST'])
def Login():
  global currentUser
  db = utils.db_connect()
  cur = db.cursor(cursorclass=MySQLdb.cursors.DictCursor)
  if request.method == 'POST':
    if currentUser == '':
      username = MySQLdb.escape_string(request.form['username'])
      pw = MySQLdb.escape_string(request.form['pw'])
      query = "SELECT * FROM Login AS up INNER JOIN users AS u ON up.L_ID = u.id WHERE u.L_Name = '%s' AND up.password = SHA2('%s',0)" % (username, pw)
      cur.execute(query)
      if cur.fetchone( ):
        currentUser = username
        return redirect(url_for('mainIndex'))
    else:
      warn = "You are already logged in as " + currentUser + "!"
      #return render_template('warning.html', warn = warn)
  return render_template('login.html', curus = currentUser)
  

@app.route('/results', methods=['GET', 'POST'])
def results():
   
    return render_template('results.html')
  
if __name__ == '__main__':
    app.debug = True
    app.run(host='0.0.0.0', port=55200)
