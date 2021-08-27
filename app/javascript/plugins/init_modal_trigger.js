const initModalTrigger = () => {
  const button = document.getElementById('modal-trigger-button')
  const modal = document.getElementById('accept-modal')
  const modalTrigger = () => {
    modal.classList.toggle('modal-hidden')
  }
  if (button) {
    button.addEventListener('click', () => {
      modalTrigger()
    }, false) 
  }
}

export { initModalTrigger }