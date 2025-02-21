document.getElementById('registrationForm').addEventListener('submit', function(event) {
    const phoneNumber = document.getElementById('phoneNumber').value;
    if (phoneNumber.length < 10 || phoneNumber.length > 15) {
        alert("Phone number must be between 10 and 15 digits.");
        event.preventDefault(); // Prevent form submission
    }
});
