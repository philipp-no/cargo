import places from 'places.js';

const initAutocomplete = () => {
  if (window.location.pathname == "/users/sign_up") {
    const addressInput = document.getElementById('address_input');
    places({ 
      container: addressInput,
      language: en
    });
  }
  else if (window.location.pathname == "/trips/new") {
  const addressInputs = [document.getElementById('trip_start_location'), document.getElementById('trip_end_location')];
  addressInputs.forEach((addressInput) => {
    places({ 
      container: addressInput,
      language: en 
    });
  });
  }
  else if (window.location.pathname == "/") {
    const searchAddressInputs = [document.getElementById('start_location'), document.getElementById('end_location')];
    searchAddressInputs.forEach((addressInput) => {
      places({ 
        container: addressInput,
        language: en
       });
    });
  };
}

export { initAutocomplete };
