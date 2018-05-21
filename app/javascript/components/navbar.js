function initUpdateNavbarOnScroll() {
  const body = document.querySelector('body');

  if(!body.classList.contains("home")) return;

  const navbar = document.querySelector('.navbar-wagon');
  navbar.classList.add('navbar-wagon-transparent');

  window.addEventListener('scroll', () => {
    if (window.scrollY >= window.innerHeight) {
      navbar.classList.remove('navbar-wagon-transparent');
      // navbar.classList.add('navbar-wagon-link-white');
    } else {
      navbar.classList.add('navbar-wagon-transparent');
      // navbar.classList.add('navbar-wagon-link-white');
    }
  });
}

export { initUpdateNavbarOnScroll };
