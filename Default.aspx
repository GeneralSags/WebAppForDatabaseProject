<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebAppByPratibhaMaam._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Visit Nepal Tour & Travel Company</h1>
        <p class="lead">Visit Nepal Tour & Travel Company is a tour and travel company
            providing comprehensive Travel Package for leisure, Group, Charters & small-business traveler, backed by real-time Website & unmatched tour packages.</p>
        <p><a href="About" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Tour Packages</h2>
            <p>
                Nepal is a paradise for travel, tour and travel enthusisats. We have some of the best and cheapest Nepal tour packages which will entice you to visit this charming country.
            </p>
            <p>
                <a class="btn btn-default" href="Package">See more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>About us</h2>
            <p>
                Visit Nepal Tour & Travel Company is a tour and travel company
                providing comprehensive Travel Package for every occasion and situations backed by real-time Website & unmatched products.
            </p>
            <p>
                <a class="btn btn-default" href="About">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Contact us</h2>
            <p>
                Want to book or have a query related with our services. If so, contact us right here from the website or with the medium you like.

            </p>
            <p>
                <a class="btn btn-default" href="Contact">Contact us &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
