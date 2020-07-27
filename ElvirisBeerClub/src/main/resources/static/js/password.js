    function validatePassword(password) {
        console.log("Entra");
                    
        if (password.length === 0) {
            document.getElementById("msg").innerHTML = "";
            return;
        }
        var matchedCase = new Array();
        matchedCase.push("[$@$!%*#?&]"); 
        matchedCase.push("[A-Z]");      
        matchedCase.push("[0-9]");      
        matchedCase.push("[a-z]");    

        // Check the conditions
        var ctr = 0;
        for (var i = 0; i < matchedCase.length; i++) {
            if (new RegExp(matchedCase[i]).test(password)) {
                ctr++;
            }
        }
        // Display it
        var color = "";
        var fuerza = "";
        switch (ctr) {
            case 0:
            case 1:
                    fuerza = "Muy fragil";
                    color = "red";
                    break;
            case 2:
                fuerza = "Fragil";
                color = "red";
                break;
            case 3:
                fuerza = "Normal";
                color = "orange";
                break;
            case 4:
                fuerza = "Fuerte";
                color = "green";
                break;
        }
        document.getElementById("msg").innerHTML = fuerza;
        document.getElementById("msg").style.color = color;
    }
