function addActive(formElement){
    var form = document.querySelector(formElement);
    form.classList.add("active");
}
function hiddenForm(formElement, removeElement = false){
    var form = document.querySelector(formElement);
    form.classList.remove("active");
    if(removeElement){
        var remove = document.querySelector(removeElement);
        while(remove.lastElementChild){
            remove.removeChild(remove.lastElementChild)
        }
    }
}