//button rollover js
function buttonRollover(obj, new_style) {
    obj.className = new_style;
}


//NO SPAM EMAIL LINKS
function nospam (name, domain, subject) {
   location.href = "mailto:"+name+"@"+domain+subject;
   }
/* --------------------------------- */
/* Created:      2000-10-21          */
/* Issued:       2001-01-11          */
/* Modified:     2001-07-14          */
/* Copyright (c) 2001-2004 by        */
/* Philip Shaw, all rights reserved. */
/* --------------------------------- */

///////////////////////////////////////
// Successfully debugged for:        //
//   Mozilla                         //
//     M15                           //
//   Netscape                        //
//     3, 4.5, 6.0                   //
//   Internet Explorer               //
//     4.0 5.0, 5.5                  //
//   Opera                           //
//     3.62, 4.0, 5.0, 5.11. 6.0     //
///////////////////////////////////////

// See also:
// visibility-HorizontalMenuWriter.js
///////////////////////////////////////

// Declare the number of menus
// N.B. Add menu IDs and adjust
// widths of divs in stylesheet:
// visibility-HorizontalMenus.css
///////////////////////////////////////

// Global number for total menus:
///////////////////////////////////////
var totalmenus = 5;

// Global number for counting the tab
// sequence
///////////////////////////////////////
var tabcount = 0;

// Global string for menu output:
///////////////////////////////////////
var menutxt = '';

// Global array for menu data:
///////////////////////////////////////
var menu = new makeArray(totalmenus);

// Custom array constructor,
// indexed from 1:
///////////////////////////////////////
function makeArray(n){
  this.size = n;
  for(i=1; i<=n; i++){
    this[i] = 0;
  }
  return(this);
}

// Menu group constructor:
///////////////////////////////////////
function menuObject(n,MenuTitle,MenuURL){
  this.size =       n;
  this.MenuTitle =  MenuTitle;
  this.MenuURL =    MenuURL;
  this.Bullet =     new makeArray(n);
}

// Menu item constructor:
///////////////////////////////////////
function bulletObject(BulletTitle,BulletURL){
  this.BulletTitle =  BulletTitle;
  this.BulletURL =    BulletURL;
}

// Define menus. Add new items by
// increasing menu bullets argument
// and adding a new indexed bullet
// object to the end of the list.
//
// Menu arguments:
// 1 = No. of bullets
// 2 = Menu title
// 3 = Menu URL

// Bullet arguments:
// 1 = Bullet title
// 2 = Bullet URL
///////////////////////////////////////

// First menu
///////////////////////////////////////
menu[1] = new menuObject(0,'Home','https://affiliates.bmtmicro.com/Amain.html');

// Second menu
///////////////////////////////////////
menu[2] = new menuObject(2,'Info','https://affiliates.bmtmicro.com/afaqs.html');
menu[2].Bullet[1] = new bulletObject('FAQs','https://affiliates.bmtmicro.com/afaqs.html');
menu[2].Bullet[2] = new bulletObject('Help','https://affiliates.bmtmicro.com/ahelp.html');


// Third menu
///////////////////////////////////////
menu[3] = new menuObject(3,'Products','https://affiliates.bmtmicro.com/joinedonlystart.html');
menu[3].Bullet[1] = new bulletObject('Joined&nbsp;Product&nbsp;List','https://affiliates.bmtmicro.com/joinedonlystart.html');
menu[3].Bullet[2] = new bulletObject('Full&nbsp;Product&nbsp;List','https://affiliates.bmtmicro.com/productliststart.html');
menu[3].Bullet[3] = new bulletObject('Logo Uploader','https://affiliates.bmtmicro.com/logoupload.html');

// Fourth menu
///////////////////////////////////////
menu[4] = new menuObject(3,'Reports','https://affiliates.bmtmicro.com/affiliatesales.html');
menu[4].Bullet[1] = new bulletObject('Product&nbsp;List','https://affiliates.bmtmicro.com/productliststart.html');
menu[4].Bullet[2] = new bulletObject('Sales&nbsp;Detail','https://affiliates.bmtmicro.com/affiliatesales.html');
menu[4].Bullet[3] = new bulletObject('Affiliate&nbsp;Transactions','https://affiliates.bmtmicro.com/Atransactionstart.html'); 

// Fifth menu
///////////////////////////////////////
menu[5] = new menuObject(2,'Update&nbsp;Account&nbsp;Info','https://affiliates.bmtmicro.com/chooseloginstart.html');

// Sixth menu
///////////////////////////////////////
//menu[6] = new menuObject(0,'Logout','https://affiliates.bmtmicro.com/Alogout.html');

// Compile the static menu headings:
///////////////////////////////////////
menutxt += '<div id="LinkBar">\n';
for(i=1;i<=totalmenus;i++){
    // Increment the tabindex counter for every link
    tabcount++;
    menutxt += '\t<div id="Link' + i + '">';
    menutxt += '<a href="' + menu[i].MenuURL + '"';

    // Add an explicit tab sequence
    menutxt += ' tabindex="' + tabcount + '"';

    // Only compile the event handlers if able to handle them
    if(document.getElementById){// DOM1 compliant
      menutxt += ' onmouseover="menuOver(\'Menu' + i + '\'); return true;"';
      // To activate via tab navigation
      menutxt += ' onfocus="menuOver(\'Menu' + i + '\'); return true;"';
      menutxt += ' onmouseout="menuOut(\'Menu' + i + '\'); return true;"';
      // To de-activate when tab focus is lost
      menutxt += ' onblur="menuOut(\'Menu' + i + '\'); return true;"';

      // Increment the tabindex to allow for the bullets
      tabcount += menu[i].Bullet.size;
    }
    menutxt += '>' + menu[i].MenuTitle + '</a>';
    menutxt += '<\/div>\n';
  }
menutxt += '<\/div>\n';

// If DOM1 compliant, add the
// drop-down menus:
///////////////////////////////////////
if(document.getElementById){// DOM1 compliant
  // Reset the tab counter
  tabcount = 0;
  menutxt += '<div id="MenuBar">\n';
  for(i=1;i<=totalmenus;i++){
    // Increment the tab counter
    tabcount++;
    menutxt += '<div id="Menu' + i + '">';
    // Build the bullet list
    menutxt += '<ul>\n\t';
    for(j=1;j<=menu[i].size;j++){
      // Increment the tab couter
      tabcount++
      menutxt += '<li><a href="' + menu[i].Bullet[j].BulletURL + '"';
      menutxt += ' onmouseover="stayOpen(\'Menu' + i + '\'); return true;"';
      menutxt += ' onfocus="stayOpen(\'Menu' + i + '\'); return true;"';
      menutxt += ' onmouseout="menuOut(\'Menu' + i + '\'); return true;"';
      menutxt += ' onblur="menuOut(\'Menu' + i + '\'); return true;"';
      // Add an explicit tab sequence
      menutxt += ' tabindex="' + tabcount + '"';
      menutxt += '>' + menu[i].Bullet[j].BulletTitle;
      menutxt += '<\/a><\/li>\n\t';
    }
    menutxt += '<\/ul>\n<\/div>\n';
  }
  menutxt += '<\/div>\n';
}

// Global menu element handle:
///////////////////////////////////////
var LiveMenu = null;

// Global menu timeout handle:
///////////////////////////////////////
var Timeout_ID = null;

// Opens or keeps open a given menu
// and shuts any previous menu:
///////////////////////////////////////
function menuOver(MenuID){
  // If DOM1 supported and element exists ...
  if((document.getElementById)&&(document.getElementById(MenuID)!=null)){
    // If this menu is already open ...
    if(LiveMenu==document.getElementById(MenuID)){
      // Do not close it
      clearTimeout(Timeout_ID);
    }
    // Another might still be open ...
    else{
      // If another menu is open ...
      if(LiveMenu!=null){
        // Do not wait, shut it now
        clearTimeout(Timeout_ID);
        hideNow();
      }
    }
    // This is the new 'live' menu, make it visible
    LiveMenu = document.getElementById(MenuID);
    // LiveMenu.style.visibility is
    // initially empty in IE5 until
    // it is assigned by these
    // functions, so must check that
    // it's not null before proceeding...
    if((LiveMenu.style)&&(LiveMenu.style.visibility!=null)){
      LiveMenu.style.visibility = 'visible';
    }
  }
}

// Stops menu links from opening menu
// onmouseover when shut to
// workaround mouse events which are
// not hidden by z-index in Opera 4!
///////////////////////////////////////
function stayOpen(MenuID){
  // If menuOver has not been called or the menu is hidden, do nothing
  if((LiveMenu==null)||((LiveMenu.style)&&(LiveMenu.style.visibility)&&(LiveMenu.style.visibility=='hidden')))return;
  else menuOver(MenuID);
}

// Shuts a given menu in 250
// milliseconds, unless timeout is
// cleared by menuOver()
///////////////////////////////////////
function menuOut(MenuID){
  // If DOM1 supported and a menu is open ...
  if((document.getElementById)&&(document.getElementById(MenuID)!=null)){
    // Get the current live menu
    LiveMenu = document.getElementById(MenuID);
    // Prepare to shut it in 250 milliseconds
    Timeout_ID = window.setTimeout('hideNow();',650);
  }
}

// Called by menu handlers to shut
// previous menu immediately
///////////////////////////////////////
function hideNow(){
  if((LiveMenu.style)&&(LiveMenu.style.visibility)){
    LiveMenu.style.visibility = 'hidden';
  }
}
