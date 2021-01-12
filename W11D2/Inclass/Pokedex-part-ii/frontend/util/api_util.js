export const fetchAllPokemon = () => {
  return $.ajax({
    method: "GET",
    url: "/api/pokemon"
  })
}

export const fetchpokemon = (pokeId) => {
  return $.ajax({
    method: 'GET',
    url: `/api/pokemon/${pokeId}`
  })
}