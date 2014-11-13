
	function myFunction() {
		//variables
		var w = document.getElementById("projName").value;// get project name value
		var m = document.getElementById("inputNum").value;//get input number value
		var oldM = document.getElementById("prevInputs").value;//get previous input amount
		var x = document.getElementById("outputNum").value;//get output number value
		var oldX = document.getElementById("prevOutputs").value;//get previous output amount
		var y = "<tr><td>Project Name: </td><td><input type=text id=projName></td></tr><tr><td>Number of Inputs: </td><td><input onchange=myFunction() type=text id=inputNum></td></tr>";
		var zIn = []; //input values already entered
		var zOut = [];//output values already entered
		var n = ""; //string for variable IDs
	
		//save previous input values before rewrite
		if(oldM>m){oldM=m;}//prevent crash if amount of inputs is decreased	
		for(i=1;i<=oldM;i++){ 			
				n="input"+i;
				zIn[i]=document.getElementById(n).value;	
		}
		
		//save previous output values before rewrite
		if(oldX>x){oldX=x;}//prevent crash if amount of outputs is decreased
		for(i=1;i<=oldX;i++){ 			
				n="output"+i;
				zOut[i]=document.getElementById(n).value;	
		}
		
		
		//build input table
		for(i=1; i<=m; i++){
			y +="<tr><td>Input " + i + " </td><td><input type=text id=input" + i + "></input></td></tr>"
		}
		
		//build output table
		y+="<tr><td>Number of Outputs: </td><td><input onchange=myFunction() type=text id=outputNum></td></tr>"
		for(i=1; i<=x; i++){
			y +="<tr><td>Output " + i + " </td><td><input type=text id=output" + i + "></input></td></tr>"
		}
		
		//add values previously entered
		document.getElementById("outputForm").innerHTML = y;
		document.getElementById("projName").value = w;
		document.getElementById("outputNum").value = x;
		document.getElementById("inputNum").value = m;
		for(i=1;i<=oldM;i++){
			n="input"+i;
			document.getElementById(n).value = zIn[i];
		}	
		for(i=1;i<=oldX;i++){
			n="output"+i;
			document.getElementById(n).value = zOut[i];
		}
		
		//set new previous values
		if(m==null)
			m=0;
		if(x==null)
			x=0;
		document.getElementById("prevInputs").value = m;
		document.getElementById("prevOutputs").value = x;
	}
