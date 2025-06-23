<%@ Page Title="" Language="C#" MasterPageFile="~/Task_4/html/Main.Master" AutoEventWireup="true" CodeBehind="slider2.aspx.cs" Inherits="WebApplication1.Task_4.html.slider2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../jquery-3.7.1.min.js"></script>
<script>

  
$(document).ready(function() {
    $(".slider1-img img:gt(0)").hide();
    // var current_idx = 0 ; 
    setInterval(
        function(){
            $(".slider1-img img:first").fadeOut(200).next().fadeIn(100).end().appendTo(".slider1-img") ;
            // current_idx =  (current_idx += 1)%($(".slider1-img img").length) ;
        }
        
    ,3000)
});
    

    
    // alert($(".answer div:gt(1)".length)) ;


</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <main class="quiz-main">
        <h2 style="text-align:center;">Slider Two</h2>
    <div class="slider1-img">
        <img src="../img/—Pngtree—wood bookcases on the wall_2760330.jpg" alt="">
        <img src="../img/—Pngtree—ornate wooden bookcase filled with_15758412.jpg" alt="">
        <img src="../img/Screenshot 2025-01-30 125659.png" alt="">
        <img src="../img/3973429.jpg" alt="">
        <img src="../img/AdobeStock_453062737_Preview_Editorial_Use_Only.jpeg" alt="">
        <img src="../img/james-v5gIzrQ_P60-unsplash.jpg" alt="">

    </div>
    <!-- <div class="Slider1-buttons">
        <button style="display: none;" id="slider1-prev">Previous &lt; </button>
        <button id="slider1-next">Next &gt; </button>
        
    </div> -->
       
</main>
</asp:Content>
