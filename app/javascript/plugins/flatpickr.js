// app/javascript/plugins/flatpickr.js
import flatpickr from "flatpickr";
 
const initFlatpickr = () => {  
  const homePage = document.querySelector("#search-bar");
    flatpickr(".datepicker", {
      altInput: true,
      altFormat: homePage ? "M j, Y" : "l, F j, Y H:i",
      allowInput: true,
      time_24hr: true,
      enableTime: homePage ? false : true
    })
};

export { initFlatpickr };