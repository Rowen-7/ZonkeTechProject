var grandTotal = 0.0;
var setupSubTotal = 0.0;
var postingSubTotal = 0.0;

window.onload = function () 
{
    var menuItens = document.querySelectorAll('#menuTabs>li');
    for (var i = 0; i < menuItens.length; i++) 
    {
        menuItens[i].addEventListener("click", function ()
        {
            // occulting divs - removing .active class
            var tabs = document.querySelectorAll('.tab-content>.tab-pane');
            for (var k = 0; k < tabs.length; k++) 
            {
                tabs[k].className = "tab-pane";
            }
            // removing .active from menu itens
            for (var j = 0; j < menuItens.length; j++) 
            {
                menuItens[j].className = "";
            }
            // setting .active in clicked item
            this.className = "active";
            // getting target id
            var linkTab = this.getElementsByTagName("A")[0].id;
            // showing the selected tab div
            var tab = document.querySelectorAll('.tab-content>#' + linkTab)[0];
            tab.className = "tab-pane active";
        });
    };
};

function quote() 
{
    document.getElementById("textAreaSummary").innerHTML = "";
    var setupDesc = "";
    var postingQuoteTotal = 0;
    var setupQuoteTotal = 0;
    var setupPrice = 0;
    var countSetup = 0;
    var countA = 0;
    var countB = 0;

    document.getElementById("textAreaSummary").innerHTML += "Setup\n";
    var CheckBoxList_Setup = document.getElementById("CheckBoxList_Setup");
    var inputArr = CheckBoxList_Setup.getElementsByTagName('input');
    var labelArr = CheckBoxList_Setup.getElementsByTagName('label');

    for (var i = 0; i < labelArr.length; i++) 
    {
        if (inputArr[i].checked == true) 
        {

            setupDesc = labelArr[i].innerText;
            setupPrice = parseInt(inputArr[i].value);
            setupQuoteTotal = setupQuoteTotal + setupPrice;
            document.getElementById("textAreaSummary").innerHTML += "\t" + setupDesc + " R" + setupPrice + "\n";
            countSetup++;

            if (countSetup == 4) 
            {
                setupQuoteTotal = setupQuoteTotal - 300;
            }
        } 
    }

    var postingDesc = "";
    var postingPrice = 0;

    var numberOfPosts = document.getElementById("numberOfPosts").value;

    if (numberOfPosts > 0) 
    {
        document.getElementById("textAreaSummary").innerHTML += "Posting\n";
        document.getElementById("textAreaSummary").innerHTML += "\tPer Post" + " R300\n"
        var CheckBoxList_PostingA = document.getElementById("CheckBoxList_PostingA");
        var inputArr_A = CheckBoxList_PostingA.getElementsByTagName('input');
        var labelArr_A = CheckBoxList_PostingA.getElementsByTagName('label');


        for (var k = 0; k < labelArr_A.length; k++) 
        {
            if (inputArr_A[k].checked == true) 
            {
                postingDesc = labelArr_A[k].innerText;
                postingPrice = parseInt(inputArr_A[k].value);
                postingQuoteTotal = postingQuoteTotal + postingPrice;
                document.getElementById("textAreaSummary").innerHTML += "\t" + postingDesc + " R" + postingPrice + "\n";
                countA++;
            }
        }

        var CheckBoxList_PostingB = document.getElementById("CheckBoxList_PostingB");
        var inputArr_B = CheckBoxList_PostingB.getElementsByTagName('input');
        var labelArr_B = CheckBoxList_PostingB.getElementsByTagName('label');

        for (var j = 0; j < labelArr_B.length; j++) 
        {
            if (inputArr_B[j].checked == true) 
            {
                postingDesc = labelArr_B[j].innerText;
                postingPrice = parseInt(inputArr_B[j].value);
                postingQuoteTotal = postingQuoteTotal + postingPrice;
                document.getElementById("textAreaSummary").innerHTML += "\t" + postingDesc + " R" + postingPrice + "\n";
                countB++;
            }
        }
    }

    if ((countA + countB) == 6) 
    {
        postingQuoteTotal = postingQuoteTotal - 75;
    }
    else if (countA == 4) 
    {
        postingQuoteTotal = postingQuoteTotal - 25;
    }
    else if (countB == 2) 
    {
        postingQuoteTotal = postingQuoteTotal - 25;
    }

    setupSubTotal = setupQuoteTotal;
    postingSubTotal = (postingQuoteTotal + 300) * numberOfPosts;
    grandTotal = setupSubTotal + postingSubTotal;
    document.getElementById("initSetupTotal").innerHTML = "R" + setupSubTotal;
    document.getElementById("initPostingTotal").innerHTML = "R" + postingSubTotal;

    document.getElementById("textAreaSummary").innerHTML += "-------------------------------------------------------------------------\n";
    document.getElementById("textAreaSummary").innerHTML += "Total Onceoff" + "  R" + setupSubTotal + "\n";
    document.getElementById("textAreaSummary").innerHTML += "Total Per Month" + " R" + postingSubTotal + "\n";
    document.getElementById("textAreaSummary").innerHTML += "-------------------------------------------------------------------------\n";
    document.getElementById("textAreaSummary").innerHTML += "Grand Total" +  "  R" + grandTotal; 
    return false;
}

  