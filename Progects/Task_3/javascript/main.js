function web_design_print() {
    var values = [];
    var fname = document.getElementById("fname").value;
    values.push(fname);
    var lname = document.getElementById("lname").value;
    values.push(lname);
    var country = document.getElementById("country-input").value;
    values.push(country);
    var sub = document.getElementById("sub").value;
    values.push(sub);

    for (var i = 0; i < values.length; i++) {
        if (values[i] === "") {
            alert("Please enter all data!");
            return;
        }
    }

     var labels = ["first name : " , "last name :  " , "country :  " ,"subject :  "]
    var output = "";
    for (var i = 0; i < values.length; i++) {
        output += labels[i]+ values[i] + "<br><br>"; 
    }

    
    document.getElementById("printed-text").innerHTML = output.trim();
}

var current_image  = document.getElementById(image); ; 

function display_product(imageId) {
    var x = document.getElementById(imageId);
    if (current_image && current_image !== x)
    {
        current_image.style.visibility = 'hidden' ; 
    }
    if (x.style.visibility === 'visible') 
        {
        x.style.visibility = 'hidden';
        current_image = null; 
        }
    else
        {
        x.style.visibility = 'visible';
        current_image = x;
    }
    
}

function insert_data(){
    var x = document.getElementById("customer-table").insertRow(-1) ;
    x.insertCell(0).innerHTML = document.getElementById("Ser").value  ;
    x.insertCell(1).innerHTML = document.getElementById("Cus-name").value ;
    x.insertCell(2).innerHTML = document.getElementById("product").value ;
    x.insertCell(3).innerHTML = document.getElementById("no-products").value ;

}

function calc_total(){
    var x = document.getElementById("receipt-table").insertRow(-1) ;
     x.insertCell(0).innerHTML = document.getElementById("receipt-product").value  ;
    var y = Number(x.insertCell(1).innerHTML = document.getElementById("price").value );
      
   var total =Number( document.getElementById("total-text").innerHTML ) ; 
   total += y ;
   document.getElementById("total-text").innerHTML = total ;  

    
    
  

}

