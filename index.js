let nombre = document.getElementById("nombre");
let info = document.getElementById("info");
let imagen = document.getElementById("imagen");


let pokemonButton = document.getElementById("pokemonButton");


//conectando con pokeApi
const baseUrl = "https://pokeapi.co/api/v2/pokemon/";

let numeroPokemon = Math.floor(Math.random() * 150) + 1;
/* const pokemonUrl = `${baseUrl}${numeroPokemon}`;


fetch(pokemonUrl)
    .then(response => response.json())
    .then(data => {
        nombre.innerHTML = "Nombre: " + data.name;
        info.innerHTML = "Tipo: " + data.types.map(type => type.type.name);
        imagen.src = data.sprites.front_default;
    }) */


function getPokemon(){
    generarNumero();
    const pokemonUrl = `${baseUrl}${numeroPokemon}`;

    fetch(pokemonUrl)
    .then(response => response.json())
    .then(data => {
        nombre.innerHTML = "Nombre: " + data.name;
        info.innerHTML = "Tipo: " + data.types.map(type => type.type.name);
        imagen.src = data.sprites.front_default;
    } )   
}

function generarNumero() {
    numeroPokemon = Math.floor(Math.random() * 150) + 1;
};
pokemonButton.addEventListener('click',  getPokemon())

getPokemon();







