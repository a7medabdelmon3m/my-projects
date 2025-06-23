<%@ Page Title="" Language="C#" MasterPageFile="~/Task_4/html/Main.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="WebApplication1.Task_4.html.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <main class="about-main">
        <h2 style="text-align:center;">contact
        </h2>
     
    <div class="message">
     <h3>Contact Us </h3>
     <p>Swing by for a cub of coffee, Or Leave us a message </p>
    </div>
    <div class="contact">
        <img src="../img/AdobeStock_453062737_Preview_Editorial_Use_Only.jpeg" alt="">
        <form action="">
            <div class="input-box">
                <label for="">First Name :</label>
                <br>
                <input type="text" placeholder="Enter Name...">
            </div>
            <div class="input-box">
                <label for=""> Last Name :</label>
                <br>
                <input type="text" placeholder="Enter Last Name...">
            </div>
            <div class="input-box">
                <label for="">Country : </label>
                <br >
                <input list="country" placeholder="Choose Country...">
                <datalist id="country">
                    <option value="Egypt"></option>
                    <option value="Palestine"></option>
                    <option value="Syria"></option>
                    <option value="USA"></option>
                    <option value="China"></option>
                </datalist>
            </div>
            <div class="input-box">
                <label for="text">Subject :</label>
                <br>
                <textarea name="subject" id="text" placeholder="write Something..." style="padding-top: 20px;"></textarea>
            </div>
            <div >
                <input type="submit" class="button" value="Submit">
            </div>
        </form>

    </div>
    
    
   
</main>
</asp:Content>
