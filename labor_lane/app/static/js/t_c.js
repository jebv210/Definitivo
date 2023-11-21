//esto es para que le login cambie de incio a registro de sesion

const wrapper = document.querySelector('.wrapper');
const loginlink = document.querySelector('.login-link');
const registerLink = document.querySelector('.register-link');

registerLink.addEventListener('click',()=> {
    wrapper.classList.add('active');
    
});

loginlink.addEventListener('click',()=> {
    wrapper.classList.remove('active');
});


//esto es para luego de ver los terminos y condiciones se active el boton de registrarse

function toggleButton() {
    var checkbox = document.getElementById("acceptCheckbox");
    var nextButton = document.getElementById("nextButton");
    document.getElementById("nextButton").addEventListener("click", function() {
    window.location.href = "/templates/login";

});
    nextButton.disabled = !checkbox.checked;
    
}
