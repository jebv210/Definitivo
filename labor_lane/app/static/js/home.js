// header scroll 
const header = document.querySelector("header");

window.addEventListener("scroll", function(){
    header.classList.toggle("sticky", window.scrollY > 80)
} )


let menu = document.querySelector('.icono-menu')
let navbar = document.querySelector('.navbar')

menu.onclick = () => {
    menu.classList.toggle('bx-x')
    navbar.classList.toggle('open')
};

window.onscroll = () => {
    menu.classList.remove('bx-x')
    navbar.classList.remove('open')
}