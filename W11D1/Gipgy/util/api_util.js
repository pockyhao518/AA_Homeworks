export const fetchSearchGiphys = searchTerm => {
    return $.ajax({
        method: 'GET',
        url: `http://api.giphy.com/v1/gifs/search?q=${searchTerm}&api_key=jnrCn53cq9R4uWudWYelv4V7rD7YCWjP&limit=2`
    })
};
