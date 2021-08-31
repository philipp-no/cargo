// app/javascript/plugins/flatpickr.js
import flatpickr from "flatpickr";
 
const initFlatpickr = () => {  
  const homePage = document.querySelector("#search-bar");
    flatpickr(".datepicker", {
      altInput: true,
      allowInput: true,
      time_24hr: true,
      enableTime: homePage ? false : true
    })
};

export { initFlatpickr };