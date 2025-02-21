function validateForm() {
    var startLocation = document.getElementById("start_location").value;
    var destination = document.getElementById("destination").value;
    var spendingDays = document.getElementById("spending_days").value;

    if (startLocation === "" || destination === "") {
        alert("Please fill out all required fields.");
        return false;
    }

    if (spendingDays <= 0) {
        alert("Spending days must be greater than 0.");
        return false;
    }

    return true;
}
