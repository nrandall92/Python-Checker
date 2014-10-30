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
   
    return render_template('login.html')

@app.route('/results', methods=['GET', 'POST'])
def results():
   
    return render_template('results.html')
  
if __name__ == '__main__':
    app.debug = True
    app.run(host='0.0.0.0', port=3000)
