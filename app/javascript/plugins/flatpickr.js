// app/javascript/plugins/flatpickr.js
import flatpickr from "flatpickr";
 
const homePage = document.querySelector("#search-bar");
const initFlatpickr = () => {  
    if (homePage) {
      flatpickr(".datepicker", {
        altInput: true,
        allowInput: true,
        time_24hr: true
      })
  }
    else {
      flatpickr(".datepicker", {
        altInput: true,
        allowInput: true,
        time_24hr: true,
        enableTime: true
      })
  };
}

export { initFlatpickr };