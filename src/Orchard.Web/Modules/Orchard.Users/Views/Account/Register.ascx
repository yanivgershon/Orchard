﻿<%@ Control Language="C#" Inherits="Orchard.Mvc.ViewUserControl<object>" %>
<h1><%: Html.TitleForPage(T("Create a New Account").ToString()) %></h1>
<p><%: T("Use the form below to create a new account.")%></p>
<p><%: T("Passwords are required to be a minimum of {0} characters in length.", ViewData["PasswordLength"] as string)%></p>
<%: Html.ValidationSummary(T("Account creation was unsuccessful. Please correct the errors and try again.").ToString()) %>
<% using (Html.BeginFormAntiForgeryPost()) { %>
    <fieldset>
        <legend><%: T("Account Information")%></legend>
        <div>
            <label for="username"><%: T("Username:")%></label>
            <%: Html.TextBox("username") %>
            <%: Html.ValidationMessage("username") %>
        </div>
        <div>
            <label for="email"><%: T("Email:")%></label>
            <%: Html.TextBox("email") %>
            <%: Html.ValidationMessage("email") %>
        </div>
        <div>
            <label for="password"><%: T("Password:")%></label>
            <%: Html.Password("password") %>
            <%: Html.ValidationMessage("password") %>
        </div>
        <div>
            <label for="confirmPassword"><%: T("Confirm password:")%></label>
            <%: Html.Password("confirmPassword") %>
            <%: Html.ValidationMessage("confirmPassword") %>
        </div>
        <div>
            <input type="submit" value="<%: T("Register") %>" />
        </div>
    </fieldset>
<% } %>