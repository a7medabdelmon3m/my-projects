function startTime() {
    const today = new Date();
    let h = today.getHours();
    let m = today.getMinutes();
    let s = today.getSeconds();
    let ampm = h >= 12 ? 'PM' : 'AM';
    h = h % 12 || 12;
    
     m = checkTime(m);
    s = checkTime(s);

    document.getElementById('watch').innerHTML =  h + ":" + m + ":" + s  + " " + ampm;
    
 setTimeout(startTime, 1000);
}

function checkTime(i) {
    return (i < 10) ? "0" + i : i;
}
window.onload = startTime;
let imgs = document.getElementsByClassName("image");
let tape = document.getElementsByClassName("t-img");
let currentIndex = 0; 
function changeleft() { 
    
    imgs[currentIndex].style.display = 'none';
    tape[currentIndex].style.filter =  'grayscale(1)';
    currentIndex = (currentIndex + 1) % imgs.length;
    imgs[currentIndex].style.display = 'block';
    tape[currentIndex].style.filter =  'grayscale(0)';

}
function changeright() { 
    
    imgs[currentIndex].style.display = 'none';
    tape[currentIndex].style.filter =  'grayscale(1)';
    
    currentIndex = (currentIndex - 1+ imgs.length) % imgs.length;
    imgs[currentIndex].style.display = 'block';
    tape[currentIndex].style.filter =  'grayscale(0)';
}

function change_by_tape(idx){
    imgs[currentIndex].style.display = 'none';
    tape[currentIndex].style.filter =  'grayscale(1)';
    imgs[idx].style.display = 'block';
    tape[idx].style.filter =  'grayscale(0)';
    currentIndex = idx  ; 
}
let my_imgs = document.getElementsByClassName("image") ; 
let chidx = 0 ; 
function choose(idx){
    my_imgs[chidx].style.display = 'none' ;  
    chidx = idx  ;  
my_imgs[idx].style.display = 'block' ; 

}
let total_price = 0;

function calc() {
    var prod = document.getElementById('product').value;
    var price = parseInt(document.getElementById('price').value);
    var t = document.getElementsByTagName("table")[0];
    var ans = document.getElementsByClassName("total-price")[0];

    if (prod === "" || isNaN(price)) {
        alert("Please, Enter Data!");
        return;
    }

    var row = t.insertRow();
    var prodCell = row.insertCell(0);
    var priceCell = row.insertCell(1);
    prodCell.innerHTML = prod;
    priceCell.innerHTML = price;
    total_price += price;
    ans.innerHTML = total_price;
}
function search() {
    var val = document.getElementById("search").value.toLowerCase();
    var rows = document.querySelectorAll("table tr"); 

    rows.forEach((row, index) => {
       
        if (index === 0) return;

        var nameCell = row.cells[0]; 
        if (nameCell) {
            var nameText = nameCell.textContent.toLowerCase();
            if (nameText.includes(val)) {
                row.style.display = ""; 
            } else {
                row.style.display = "none"; 
            }
        }
    });
}




