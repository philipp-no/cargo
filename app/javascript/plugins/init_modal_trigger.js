const initModalTrigger = () => {
  const buttons = document.querySelectorAll('#modal-trigger-button')
  const modals = document.querySelectorAll('#accept-modal')
  const modalTrigger = (button) => {
    let buttonsData = button.dataset.tracker;
    modals[buttonsData].classList.toggle("modal-hidden")
  }
  if (buttons) {
    buttons.forEach((button) => {
      button.addEventListener('click', () => {
        modalTrigger(button)
      }, false) 
    })
  }
};

export { initModalTrigger }