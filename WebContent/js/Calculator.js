function Total() {
        var unit = document.getElementById("quantity").value;
        var perUnit = document.getElementById("unitPrice").value;
        var total = unit*perUnit;
       
        document.getElementById("totalUnit").innerHTML = total;
        	
}