const initModalTrigger = () => {
  const buttons = document.querySelectorAll('#modal-trigger-button')
  const modals = document.querySelectorAll('#accept-modal')

  const modalTrigger = (button) => {
    let buttonsData = button.dataset.tracker;
    modals[buttonsData].classList.toggle("modal-hidden")
    modals[buttonsData].classList.toggle("modal-open")
    closeModalOnClickOutside();
  }
  if (buttons) {
    buttons.forEach((button) => {
      button.addEventListener('click', () => {
        modalTrigger(button)
      }, false) 
    })
  }

  const closeModalOnClickOutside = () => {
    const modalOpen = document.querySelector(".modal-open")
    let numberOfClick = 0
         if (modalOpen) {
          const modalInner = document.querySelector(".modal-open > .modal-inner")
          document.addEventListener('click', (e) => { 
           let isClickInside = modalInner.contains(e.target);
           numberOfClick +=1
           if (!isClickInside && numberOfClick > 1) {
             modalOpen.classList.remove("modal-open")
             modalOpen.classList.add('modal-hidden');
           }
         })
       }
  }
};

export { initModalTrigger }