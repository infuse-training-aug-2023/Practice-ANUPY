const apiKey = '8e26f1c6';
const baseUrl = 'https://www.omdbapi.com/';

const itemsPerPage = 6;
let currentPage = 1;
let movies = [];

async function fetchMovies() {
  const response = await fetch(`${baseUrl}?apikey=${apiKey}&s=movie`);
  const data = await response.json();
  return data.Search;
}

async function displayPage(pageNumber, movies) {
  const movieGrid = document.getElementById('movieGrid');
  const startIdx = (pageNumber - 1) * itemsPerPage;
  const endIdx = startIdx + itemsPerPage;

  movieGrid.innerHTML = '';
  for (let i = startIdx; i < endIdx && i < movies.length; i++) {
    const movieCard = document.createElement('div');
    movieCard.classList.add('movie-card');
    movieCard.innerHTML = `
      <img src="${movies[i].Poster}" alt="${movies[i].Title} Poster">
      <h2>${movies[i].Title}</h2>
      <p>Year: ${movies[i].Year}</p>
      <p>Rated: ${movies[i].Rated}</p>
      <p>Release Date: ${movies[i].Released}</p>
      <p>Runtime: ${movies[i].Runtime}</p>
      <button class="view-more" data-imdb="${movies[i].imdbID}">View More</button>
    `;
    movieGrid.appendChild(movieCard);
  }


  const style = document.createElement('style');
  style.innerHTML = `
      
        main {
          padding: 1rem;
        }

      .movie-grid {
        display : grid;
        grid-template-columns : auto auto auto
      }
        
      .search-bar {
        margin-bottom: 1rem;
      }

      .pagination {
        margin: 1rem;
      }

      .view-more{
        margin-bottom: 1rem;
      }
      
      #sortAsc,#sortDesc{
        float : right;
      }
        
    `;
document.head.appendChild(style);

  const viewMoreButtons = document.querySelectorAll('.view-more');
  viewMoreButtons.forEach(button => {
    button.addEventListener('click', () => {
      const imdbID = button.getAttribute('data-imdb');
      displayMovieDetails(imdbID);
    });
  });
}

//

async function fetchMovieDetails(imdbID) {
  const response = await fetch(`${baseUrl}?apikey=${apiKey}&i=${imdbID}`);
  const data = await response.json();
  return data;
}

async function displayMovieDetails(imdbID) {
  const movieDetails = await fetchMovieDetails(imdbID);
  const infoIframe = parent.document.getElementById('iframe-30');
  infoIframe.contentDocument.body.innerHTML = `
    <style>
      body {
        font-family: Arial, sans-serif;
        padding: 1rem;
      }
      img {
        max-width: 100%;
      }
    </style>
    <img src="${movieDetails.Poster}" alt="${movieDetails.Title} Poster">
    <h2>${movieDetails.Title}</h2>
    <p>Year: ${movieDetails.Year}</p>
    <p>Rated: ${movieDetails.Rated}</p>
    <p>Release Date: ${movieDetails.Released}</p>
    <p>Runtime: ${movieDetails.Runtime}</p>
    <p>Genre: ${movieDetails.Genre}</p>
    <p>Director: ${movieDetails.Director}</p>
    <p>Actors: ${movieDetails.Actors}</p>
    <p>Plot: ${movieDetails.Plot}</p>
    <p>Awards: ${movieDetails.Awards}</p>
  `;
}

//

document.getElementById('searchButton').addEventListener('click', async () => {
  const searchInput = document.getElementById('searchInput').value;
  if (searchInput.trim() !== '') {
    movies = await fetchMoviesBySearch(searchInput);
    currentPage = 1;
    displayPage(currentPage, movies);
  }
});

async function fetchMoviesBySearch(searchTerm) {
  const response = await fetch(`${baseUrl}?apikey=${apiKey}&s=${searchTerm}`);
  const data = await response.json();
  return data.Search;
}


//

document.getElementById('sortAsc').addEventListener('click', () => {
  movies.sort((a, b) => parseInt(a.Year) - parseInt(b.Year));
  displayPage(currentPage, movies);
});

document.getElementById('sortDesc').addEventListener('click', () => {
  movies.sort((a, b) => parseInt(b.Year) - parseInt(a.Year));
  displayPage(currentPage, movies);
});

//
document.getElementById('prevPage').addEventListener('click', () => {
  if (currentPage > 1) {
    currentPage--;
    displayPage(currentPage, movies);
  }
});

document.getElementById('nextPage').addEventListener('click', () => {
  const totalPages = Math.ceil(movies.length / itemsPerPage);
  if (currentPage < totalPages) {
    currentPage++;
    displayPage(currentPage, movies);
  }
});

async function init() {
  movies = await fetchMovies();
  displayPage(currentPage, movies);
}

init();
