<%@ Page Title="" Language="C#" MasterPageFile="~/Task_4/html/Main.Master" AutoEventWireup="true" CodeBehind="quiz3.aspx.cs" Inherits="WebApplication1.Task_4.html.quiz3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <script src="../jquery-3.7.1.min.js"></script>
        <script>

        var currentCase = null; 
        current_answer = null ;
$(document).ready(function() {
    $(".cotainer-title").mouseover(function() {
        
        var nextBody = $(this).next(".cotainer-body");

        
        if (currentCase && nextBody[0] !== currentCase[0])
         {
            currentCase.slideUp(); 
            currentCase.prev(".cotainer-title").children("span").text("+");
        }

      
        if (nextBody.is(":visible"))
         {
        nextBody.slideUp();
        $(this).children("span").text("+");
            currentCase = null;
        } else 
        {
        nextBody.slideDown(); 
        $(this).children("span").text("-");
        currentCase = nextBody;
        }
        // 
    });
 
    $(".check-answer").click(function() {
        var total = Number($("#res").text()) ;
        if ($("input:checked").val() === "Yes")
         {
            $(this).text("Your Answer is Correct");
            total += 1 ;
        } 
        else 
        {
            $(this).text("Your Answer is Wrong");
        }
        $("#res").text(total) ;
    });
});
            

            
            // alert($(".answer div:gt(1)".length)) ;


        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <main class="quiz-main">
        <h2 style="text-align:center;">Quiz Three</h2>
       <div class="quiz2-cotainer">
            <div class="cotainer-title"  >
                    <p>1 &rpar; Question Number one... ? </p>
                    <span>+</span>
            </div>
            <div class="cotainer-body">
                <div class="quiz3-inputs">
                    <form action="">
                        <input type="radio" value="Yes" name="yes">Yes 
                        <input type="radio" value="No" name="yes">No
                    </form>
                </div>

                <div class="check-answer">
                        Answer
                </div>
                
            </div>

       </div>
       <div class="quiz2-cotainer">
            <div class="cotainer-title">
                <p> <p>2 &rpar; Question Number Two... ? </p></p>
                <span>+</span>
            </div>
             <div class="cotainer-body">
                <div class="quiz3-inputs">
                    <form action="">
                        <input type="radio" value="Yes" name="yes">Yes 
                        <input type="radio" value="No" name="yes">No
                    </form>
               </div>

               <div class="check-answer">
                Answer
               </div>
                
             </div>

       </div>
       <div class="quiz2-cotainer">
            <div class="cotainer-title">
                <p> <p>3 &rpar; Question Number Three... ? </p></p>
                <span>+</span>
            </div>
            <div class="cotainer-body">
                <div class="quiz3-inputs">
                    <form action="">
                        <input type="radio" value="Yes" name="yes">Yes 
                        <input type="radio" value="No" name="yes">No
                    </form>
               </div>

               <div class="check-answer">
                Answer
               </div>
                
            </div>
            

       </div>
       <div class="Counter">
        <p>Get Result</p>
        <p id="res">0</p>
    </div>
</main>
</asp:Content>
