const nameInput = document.getElementById("nameinput");
const emailInput = document.getElementById("emailinput");
const messageInput = document.getElementById("messageinput");

async function getUser(){
    const JSON = await dataFetch(USER_API, 'getUser');

    if (!JSON.session) {
        sweetAlert(3,'To send us a message, you need to log in',false);
    }
}

document.addEventListener('DOMContentLoaded', async () => {
    const JSON = await dataFetch(USER_API, 'getUser');
    
    if(JSON.status){
        nameInput.value = JSON.fullname;
    }
});

nameInput.addEventListener('focus', () => {
    getUser();
});

emailInput.addEventListener('focus', () => {
    getUser();
});

messageInput.addEventListener('focus', () => {
    getUser();
});