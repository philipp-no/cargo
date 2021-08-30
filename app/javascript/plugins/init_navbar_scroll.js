const initNavbarScroll = () => {
  const banner = document.getElementById('index-banner')
  if (banner) {
    let scrollY = 0;
    const navbar = document.getElementById('navbar-scroll')
    const logo = document.getElementById('navbar-logo-selector')
    document.addEventListener('scroll', (e) => {
      scrollY = window.pageYOffset
      if (scrollY > 380) {
        navbar.classList.add('past-scroll')
        logo.classList.remove('navbar-logo-white')
        logo.classList.add('navbar-logo-color')
      } else {
        navbar.classList.remove('past-scroll')
        logo.classList.remove('navbar-logo-color')
        logo.classList.add('navbar-logo-white')
      }
    });
  }
}

export { initNavbarScroll }
