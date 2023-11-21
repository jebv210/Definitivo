// Variables
const imgUser = document.querySelector('#imgUser');
const userImage = document.querySelector('.user-image');
const alertAsk = document.querySelector('#alertAsk');
const btnA = document.querySelector('#btnA');
const btnC = document.querySelector('#btnC')
const header = document.querySelector("header");
const menu = document.querySelector('.icono-menu');
const navbar = document.querySelector('.navbar');
const alertAcep = document.querySelector('.alert-acep');
const boxBtn = document.querySelector('.box-btn');
const inpAcep = document.querySelector('#inpAcep');

// Inicio de pagina
document.addEventListener('DOMContentLoaded', function(){
    ocultar();
})

$(window).load(function(){
    $(".loader").fadeOut("slow");
});

// funciones de alertas
function ocultar(){
    alertAsk.style.display = 'none';
    alertAcep.style.display = 'none';
}

imgUser.addEventListener('click', function(){
    alertAsk.style.display = 'block';
    alertAsk.style.display = 'flex';
});




btnA.addEventListener('click', function(){
    alertAcep.style.display = 'block';
    alertAsk.style.display = 'none';
});


const boxFile = document.querySelector('.box-file').addEventListener('click', function(){
    const inpAcep = document.querySelector('#inpAcep').click();
})

window.addEventListener("scroll", function(){
    header.classList.toggle("sticky", window.scrollY > 80);
} )


menu.onclick = () => {
    menu.classList.toggle('bx-x');
    navbar.classList.toggle('open');
};


window.onscroll = () => {
    menu.classList.remove('bx-x');
    navbar.classList.remove('open');
}
// Colorcar imagen



