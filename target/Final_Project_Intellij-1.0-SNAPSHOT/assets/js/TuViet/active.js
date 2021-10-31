
function handle(btnElement, formElement){
    var course = document.querySelector(btnElement)
    course.onclick = function(){
        var form = document.querySelector(formElement);
        form.classList.add("active");
    }
}
function Cancel(btnElement,formElement, removeElement = false){
    var course = document.querySelector(btnElement)
    course.onclick = function(){
        var form = document.querySelector(formElement);
        form.classList.remove("active");
        if(removeElement){
            var remove = document.querySelector(removeElement);
            while(remove.lastElementChild){
                remove.removeChild(remove.lastElementChild)
            }
        }
    }
}
