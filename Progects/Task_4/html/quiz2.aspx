<%@ Page Title="" Language="C#" MasterPageFile="~/Task_4/html/Main.Master" AutoEventWireup="true" CodeBehind="quiz2.aspx.cs" Inherits="WebApplication1.Task_4.html.quiz2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <script src="../jquery-3.7.1.min.js"></script>
        <script>
            var currentCase = null; 

$(document).ready(function() {
    $(".cotainer-title").click(function() {
        
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
    });
});


            
            // alert($(".answer div:gt(1)".length)) ;


        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <main class="quiz-main">
        <h2 style="text-align:center;">Quiz Two</h2>
       <div class="quiz2-cotainer">
            <div class="cotainer-title"  >
                    <p>Html</p>
                    <span>+</span>
            </div>
            <div class="cotainer-body">
                Lorem ipsum dolor sit amet consectetur adipisicing elit. 
                Iure, alias magni minus totam in maiores eveniet quasi, 
                obcaecati vitae temporibus consequatur magnam modi hic 
                nobis at! Ab suscipit velit doloremque!

            </div>

       </div>
       <div class="quiz2-cotainer">
            <div class="cotainer-title">
                <p>Php</p>
                <span>+</span>
            </div>
            <div class="cotainer-body">
                Lorem ipsum dolor sit amet consectetur adipisicing elit. 
                Iure, alias magni minus totam in maiores eveniet quasi, 
                obcaecati vitae temporibus consequatur magnam modi hic 
                nobis at! Ab suscipit velit doloremque!
            </div>

       </div>
       <div class="quiz2-cotainer">
            <div class="cotainer-title">
                <p>CSS</p>
                <span>+</span>
            </div>
            <div class="cotainer-body">
                Lorem ipsum dolor sit amet consectetur adipisicing elit. 
                Iure, alias magni minus totam in maiores eveniet quasi, 
                obcaecati vitae temporibus consequatur magnam modi hic 
                nobis at! Ab suscipit velit doloremque!
            </div>

       </div>
</main>
</asp:Content>
