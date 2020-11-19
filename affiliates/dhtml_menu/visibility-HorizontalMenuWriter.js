/* --------------------------------- */
/* Created:  2000-11-12              */
/* Issued:   2001-01-11              */
/* Modified: 2001-07-14              */
/* Drop down menu writer             */
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
//     3.62, 4.0, 5.0, 5.11, 6.0     //
///////////////////////////////////////

// See also:
// visibility-HorizontalMenuBuilder.js
///////////////////////////////////////

// If menutxt is defined and not
// empty, write it to the document
///////////////////////////////////////
if((menutxt)&&(menutxt!='')){
  document.write(menutxt);
}