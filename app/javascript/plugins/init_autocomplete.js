import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('address_input')
  if (addressInput) {
    places({ container: addressInput });
  }
  else { 
  const addressInputs = [document.getElementById('trip_start_location'), 
  document.getElementById('trip_end_location')];
  addressInputs.forEach((addressInput) => {
    places({ container: addressInput });
  });
  };
}

export { initAutocomplete };