<%@ Page Title="" Language="C#" MasterPageFile="~/Task_4/html/Main.Master" AutoEventWireup="true" CodeBehind="quiz1.aspx.cs" Inherits="WebApplication1.Task_4.html.quiz1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../jquery-3.7.1.min.js"></script>
<script>
    $(document).ready(function() {
        $(".door").click(function() {  
            $(this).animate({top: "200px"} , 2000); 
            // if($(".answer div:second").text() === correct)
            $(".chooses .bg:odd ").css('background' , "green")
        });
    });
    
    // alert($(".answer div:gt(1)".length)) ;


</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <main class="quiz-main">
        <h2 style="text-align:center;">Quize One</h2>
       <div class="question">
        <p>1 &rpar; question number Two </p>
        <div class="chooses">
                <div class="answer"> 
                    <div class="bg" >
                        wrong
                    </div>
                    <div class="door">
                        yes
                    </div>

                </div>
                <div class="answer">
                    <div class="bg">
                        correct 
                    </div>
                    <div class="door">
                        no
                    </div>


                </div>
            </div>

       </div>
       <div class="question">
        <p>1 &rpar; question number Three </p>
        <div class="chooses">
                <div class="answer"> 
                    <div class="bg" >
                        wrong
                    </div>
                    <div class="door">
                        yes
                    </div>

                </div>
                <div class="answer">
                    <div class="bg">
                        correct 
                    </div>
                    <div class="door">
                        no
                    </div>


                </div>
            </div>

       </div>
       <div class="question">
        <p>1 &rpar; question number One </p>
        <div class="chooses">
                <div class="answer"> 
                    <div class="bg" >
                        wrong
                    </div>
                    <div class="door">
                        yes
                    </div>

                </div>
                <div class="answer">
                    <div class="bg">
                        correct
                    </div>
                    <div class="door">
                        no
                    </div>


                </div>
            </div>

       </div>
    
</main>
</asp:Content>
