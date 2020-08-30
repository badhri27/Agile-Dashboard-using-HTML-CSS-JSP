if (localStorage.getItem('mySelectLocalstorageValue') === null) { 
                localStorage.setItem('mySelectLocalstorageValue', "a");
                $("#myDynamicSelectBox").val("a");
            }
            else {
                if (localStorage.getItem('mySelectLocalstorageValue') === "a") { 
                    $("#myDynamicSelectBox").val("a");
                } else if (localStorage.getItem('mySelectLocalstorageValue') === "b") { 
                    $("#myDynamicSelectBox").val("b"); 
                } else if (localStorage.getItem('mySelectLocalstorageValue') === "c") { 
                    $("#myDynamicSelectBox").val("c");
                } 
            }