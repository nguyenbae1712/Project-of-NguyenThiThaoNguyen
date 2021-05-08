const icon = document.getElementById("icons-user");
const divUser = document.getElementById("div-user");

function test() {
    const divUser = document.getElementById("div-user");
    divUser.classList.toggle("div-user-block");

}
icon.addEventListener('click', test);