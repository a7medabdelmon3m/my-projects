function drop(clName) {
    let element = document.querySelector("." + clName);
    
    if (element) {
        let currentDisplay = getComputedStyle(element).display;
        
        if (currentDisplay === 'none') {
            element.style.display = 'block';
            element.style.position = 'static';
        } else {
            element.style.display = 'none';
            element.style.position = 'absolute';

        }
    }
}

