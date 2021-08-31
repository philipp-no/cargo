const initNavbarScroll = () => {
  const banner = document.getElementById('index-banner')
  if (banner) {
    let scrollY = 0;
    const navbar = document.getElementById('navbar-scroll')
    const logo = document.getElementById('navbar-logo-selector')
    const textNodes = document.getElementsByClassName('nav-link')
    document.addEventListener('scroll', (e) => {
      scrollY = window.pageYOffset
      if (scrollY > 420) {
        for (var i = 0; i < textNodes.length; i++) {
          textNodes[i].classList.add('scroll-text')
        }
        navbar.classList.add('past-scroll')
        logo.classList.remove('navbar-logo-white')
        logo.classList.add('navbar-logo-color')
      } else {
        for (var i = 0; i < textNodes.length; i++) {
          textNodes[i].classList.remove('scroll-text')
        }
        navbar.classList.remove('past-scroll')
        logo.classList.remove('navbar-logo-color')
        logo.classList.add('navbar-logo-white')
      }
    });
  }
}

export { initNavbarScroll }
