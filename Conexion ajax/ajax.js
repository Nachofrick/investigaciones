function ajax(){
    const http = new XMLHttpRequest();
    http.onreadystatechange = function(){
        if(this.readyState == 4 && this.status == 200){
            console.log(this.responseText);
            document.getElementById("response").innerHTML=this.responseText
        }
    }
    http.open("GET",'./domin.html');
    http.send();
}

document.getElementById("boton").addEventListener("click",function(){
    ajax();
});