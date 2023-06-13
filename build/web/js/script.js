document.getElementById("submit-button").addEventListener("click", function() {
    var textFieldValue = document.getElementById("loginUser").value;
  
    if (textFieldValue === "user") {
      window.location.href = "../html/main.html"; 
    } else if (textFieldValue === "admin") {
      window.location.href = "../html/admin.html"; 
    } else {
        alert("Invalid username or password");
    }
  });
  