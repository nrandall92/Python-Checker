from flask import Flask, render_template, request


app = Flask(__name__)

# Configuration

@app.route('/', methods=['GET', 'POST'])
def mainIndex():
    if request.method == 'POST':
      output = run_command('pyfile')
      print output
      
      
	  

   
    return render_template('home.html')
  
@app.route('/Login', methods=['GET', 'POST'])
def Login():
   
    return render_template('Login.html')

@app.route('/results', methods=['GET', 'POST'])
def results():
   
    return render_template('results.html')
  
if __name__ == '__main__':
    app.debug = True
    app.run(host='0.0.0.0', port=3000)
