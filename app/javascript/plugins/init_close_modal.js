const initCloseModal = () => {
  const closeButtons = document.querySelectorAll(".jessica-btn")
  const modals = document.querySelectorAll(".modal")
  const modalFooter = document.querySelector(".modal-backdrop")
  closeButtons.forEach((btn) => {
    btn.addEventListener("click", () => {
      modals.forEach((modal) => {
        modal.classList.remove("d-block");
        modal.classList.remove("show");
      })
      modalFooter.remove();
    })
    });
};

export { initCloseModal };