const initModalTrigger = () => {
  const buttons = document.querySelectorAll('#modal-trigger-button')
  const modals = document.querySelectorAll('#accept-modal')

  const modalTrigger = (button) => {
    let buttonsData = button.dataset.tracker;
    modals[buttonsData].classList.toggle("modal-hidden")
    modals[buttonsData].classList.toggle("modal-open")
    closeModalOnClickOutside(buttonsData);
  }
  if (buttons) {
    buttons.forEach((button) => {
      button.addEventListener('click', () => {
        modalTrigger(button)
      }, false) 
    })
  }

  const closeModalOnClickOutside = (index) => {
    let modalOpen = document.querySelector(`.modal-${index}.modal-open`)
    if (modalOpen) {
      let modalInner = document.querySelector(`.modal-${index}>.modal-inner`)
      modalOpen.addEventListener('click', (e) => { 
        let isClickInside = modalInner.contains(e.target);
           if (!isClickInside) {
             modalOpen.classList.remove("modal-open")
             modalOpen.classList.add('modal-hidden');
           }
         })
       }
  }
};

export { initModalTrigger }