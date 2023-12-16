document.addEventListener("turbo:load", function() {


    const hamburger = document.querySelector('#hamburger')
    
    hamburger.addEventListener('click',(event)=>{
        event.preventDefault();    
        let menu = document.querySelector('#navbar-menu');
        menu.classList.toggle("collapse");
    })



    const account = document.querySelector('#account')
    
    account.addEventListener('click',(event)=>{
        event.preventDefault();    
        let menu = document.querySelector('#dropdown-menu');
        menu.classList.toggle("active");
    })


})