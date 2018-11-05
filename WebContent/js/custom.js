








function doAddition() {
	var firstValue = document.getElementById("f1").value;
	var secondValue = document.getElementById("f2").value;
	
	var resultValue = parseInt(firstValue) + parseInt(secondValue);
	
	document.getElementById("result").innerHTML = "Result of Addition: " + resultValue;
}

function doDivision() {
	var firstValue = document.getElementById("f1").value;
	var secondValue = document.getElementById("f2").value;
	
	var resultValue = firstValue / secondValue;
	
	document.getElementById("result").innerHTML = "Result of Division: " + resultValue;
}

function doSubstraction() {
	var firstValue = document.getElementById("f1").value;
	var secondValue = document.getElementById("f2").value;
	
	var resultValue = firstValue - secondValue;
	
	document.getElementById("result").innerHTML = "Result of Substraction: " + resultValue;
}

function doMultiplication() {
	var firstValue = document.getElementById("f1").value;
	var secondValue = document.getElementById("f2").value;
	
	var resultValue = firstValue * secondValue;
	
	document.getElementById("result").innerHTML = "Result of Multiplication: " + resultValue;
}

/*function doOperation(operationType) {
	var firstValue = document.getElementById("f1").value;
	var secondValue = document.getElementById("f2").value;
	
	var resultValue = "";
	
	if(operationType == "add") {
		resultValue = parseInt(firstValue) + parseInt(secondValue);
	} else if(operationType == "divide") {
		resultValue = firstValue / secondValue;
	} else if(operationType == "substract") {
		resultValue = firstValue - secondValue;
	} else if(operationType == "multiply") {
		resultValue = firstValue * secondValue;
	}
	
	document.getElementById("result").innerHTML = "Result: " + resultValue;
}*/

/*function doOperation(firstValue, secondValue, operationType) {
	var resultValue = "";
	
	if(operationType == "add") {
		resultValue = parseInt(firstValue) + parseInt(secondValue);
	} else if(operationType == "divide") {
		resultValue = firstValue / secondValue;
	} else if(operationType == "substract") {
		resultValue = firstValue - secondValue;
	} else if(operationType == "multiply") {
		resultValue = firstValue * secondValue;
	}
	
	document.getElementById("result").innerHTML = "Result: " + resultValue;
}*/

function add(value1, value2) {
	var resultValue = parseInt(value1) + parseInt(value2);
	
	return resultValue;
}

function divide(value1, value2) {
	var resultValue = value1 / value2;
	
	return resultValue;
}

function substract(value1, value2) {
	var resultValue = value1 - value2;
	
	return resultValue;
}

function multiply(value1, value2) {
	var resultValue = value1 * value2;
	
	return resultValue;
}

function doOperation(operationType) {
	var firstValue = document.getElementById("f1").value;
	var secondValue = document.getElementById("f2").value;
	
	var resultValue = "";
	
	if(operationType == "add") {
		resultValue = add(firstValue, secondValue);
	} else if(operationType == "divide") {
		resultValue = divide(firstValue, secondValue);
	} else if(operationType == "substract") {
		resultValue = substract(firstValue, secondValue);
	} else if(operationType == "multiply") {
		resultValue = multiply(firstValue, secondValue);
	}
	
	document.getElementById("result").innerHTML = "Result: " + resultValue;
}

function loadParagraphs() {
	var paragraph1 = document.getElementById("para1");
	paragraph1.innerHTML = "Hello All.";
	
	var paragraph2 = document.getElementById("para2");
	paragraph2.innerHTML = "Hi All.";
	
	var paragraph3 = document.getElementById("para3");
	paragraph3.innerHTML = "Hey All.";
	
	document.getElementById("para4").innerHTML = "Bye All.";
	
	var allParagraphs = document.getElementsByTagName("p");
	for(var x = 0; x < allParagraphs.length; x++) {
		var paragraph = allParagraphs[x];
		paragraph.style.fontSize = "50px";
		paragraph.style.color = "white";
	}
	
	var oddParagraphs = document.getElementsByClassName("odd");
	for(var x = 0; x < oddParagraphs.length; x++) {
		var paragraph = oddParagraphs[x];
		paragraph.style.backgroundColor = "red";
	}
	
	var evenParagraphs = document.getElementsByClassName("even");
	for(var x = 0; x < evenParagraphs.length; x++) {
		var paragraph = evenParagraphs[x];
		paragraph.style.backgroundColor = "green";
	}
}