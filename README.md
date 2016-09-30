# Lab2_Comp4952

BCIT
Comp 4952 Technical Programming 2
Technical Programming Option
Option Head Mirela Gutica
Fall  2016

Lab 2 
How to Create a Web Application with Web Forms in ASP.NET

Requirements:

1.	The assignment has 2 parts: coding and questions. Submit your work in D2L and provide at the beginning of the word/text document containing the answers the link what I have to use to test your solution.

2.	You will design and implement a simple Web Form website that will expose you to the most important aspects of ASP.NET development, data flow and web server controls.
3.	The application calculates the future value of investments based on user input. You will add validation and style.
4.	Use Visual Studio 2015.
5.	Start a new “Web Site”. Select ASP.NET Empty Web Site. By default, the website is created under My Documents\Visual Studio 2015\Projects. You can choose a different directory. 
You can change the default directory: Tools/Options/Projects/Solutions/General Category.
On creation you choose a folder for your website (you can create one before or when you create the website). I created here the folder InvestmentCalculator2016. 
 
6.	When you create a project/website you can select a target framework: By default, 4.5.2 is used by Visual Studio 2015. You can see/change the target platform: select Debug/Properties/ InvestmentCalculator2016 under the Build menu.  
7.	Observe that the new created website has only Web.config folder.
 
8.	Add a Web Form to your website.  Use the Add New Item dialog. Select the language C#. The new web form is called: default. 
 
9.	Observe the designer, the source code and the code behind.
10.	Add a folder to the website. Name it “Images”. Add an image/logo to the folder (use Add Existing Item…).
 
11.	Note that you can also add a special folder: “ASP.NET folder”.
12.	Observe the keyword: runat="server".
13.	Add HTLM elements to the form (two ways):
a.	In the designer: e.g., drag the image to the designer.
b.	In the source type “<” and the intelliSense will help you enter snippets, tags, attributes.
Add a logo.
Add a title to your website including your name (e.g., Peter’s Investment Calculator).
Add a stylesheet of your choice. 
 
14.	Add a table to your form. By default, the settings for a table are set to “flow layout” (text and controls are positioned from left to right and from top to bottom). A table gives you the flow control. Another way to achieve flow control is to use CSSs.
a.	In designer, note that the menu has a menu item “Table”. Use the Table menu (an alternative choice is to use the Table control from the Toolbox).
b.	Use the Insert Table dialog to define the table’s properties:
 
c.	You can format the table after you create it. You can resize rows/columns by dragging theirs borders (bottom and right, respectively).
15.	Add web server controls to the web form.
a.	Observe in the Toolbox the categories of controls available in ASP.NET Web Forms.
b.	Web controls can be (1) dragged to the form/table in designer or (2) inserted as a snippet of code in html.
c.	As in C#, use the Properties window to set properties and events to web controls.
 
d.	Many web server controls have smart tag menus that provide options for performing common tasks and setting common properties.  
e.	Drag on your table the following controls: one dropdownlist, two textboxes, one label and two buttons.
f.	Name the controls properly.
g.	Give initial values of your choice to the inserted textbox controls (e.g. LabelFutureValue, ButtonCalculate, etc.).
 

h.	Observe the smart tag menu for the dropdownlist web control and how it can be connected to a data source. Leave the control unbound for now.
 
16.	Add functionality to your web site in code-behind:
i.	In the Page_Load event load the monthly investment choices.
       if (!IsPostBack)
// add items to the DropDownListMontlyInvestment
ii.	In the ButtonCalculate event add your investment calculations.
ifValid{
// calculations
}
iii.	In the ButtonClear clear the content.
17.	Run the website Calculate button without values in textboxes. Observe the need for validation.  Add validation. Note that ASP.NET has a validation controls (very useful).
a.	Add field validators to your textbox controls. 
i.	Add range validators
1.	Set up the relevant properties in the properties window: display (dynamic), error message, control to validate, range, type, id, min and max value.
 
ii.	Add required field validators
1.	Set up the relevant properties in the properties window: display (dynamic), error message, control to validate, id.
 

18.	Add CSS style.
a.	Add the CSS style of your choice such that the interface design is improved. Use Add/Add New Item/StyleSheet. Add the corresponding CSS class to each element of the interface.

Answer the questions:

a.	What is happening when a user requests a page from a remote server?
<b>The server will reder pages to the client</b>

b.	Is it any client-side code executing in your assignment application? If so, how is the client-side code executed in ASP.NET?
<b>CSS

c.	What is the role of the line:
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<b>
- 'Language="C#"' language of the file
- 'AutoEventWireup="true"'  handlers are automatically bound to events at run time based on their name and signature
- 'CodeFile="Default.aspx.cs"' location of file that contains the methods
</b>

d.	What is the role of a default web form?

<b> </b>

e.	What special folders are in ASP.NET and what is their role?

<b> </b>

f.	What is the difference between web server controls and HTML controls?

<b> validation will be done on server side for server controls</b>

g.	What is the role of property IsPostBack and how should be used?

h.	What control validators are available in ASP.NET, how should be used?

<b> RequiredFieldValidator, CompareValidator, RangeValidator,  RegularExpressionValidator, CustomValidator. 
They're called when isValid is called.</b>

i.	What is the role of isValid and how should be used?

<b> Gets a value indicating whether page validation succeeded. </b>

j.	What is happening when the user hits the refresh button?

The webpage will prompt the user that the browser needs to resend the information previosly submitted

- GET "/Default.aspx"

- Save State of "/Default.aspx"

- GET "/_browserLink/requestData/requestNumber"

</b>
