function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar-wagon');
  window.addEventListener('scroll', () => {
    if (window.scrollY >= window.innerHeight) {
      navbar.classList.add('navbar-wagon-white');
      navbar.classList.add('navbar-wagon-link-white');
    } else {
      navbar.classList.remove('navbar-wagon-white');
      navbar.classList.add('navbar-wagon-link-white');
    }
  });
}

export { initUpdateNavbarOnScroll };
