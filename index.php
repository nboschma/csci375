<?php 

/**
 * File: Main
 * Purpose: Handles, well, everything
 * 
 * NOTE: This framework is quick and dirty for the 
 *       project and by no means production ready
 * 
 * Created by: Brad Groat
 * Created on: Feb 10, 2018
 * Last Edits: Feb 10, 2018
 * 
 */




// Php page functionality goes here




/** Template **/

// Includes doctype, head, body, and main wrapper
require_once "inc/head.php";


// Page content/markup
?>

   <article id="main">
   
      <section>
      
         <header>
            <h1>The main page</h1>
         </header>
         
         <p>Some content</p>
         
         <aside>Some aside cotnent</aside>
         
         <footer></footer>
         
      </section>
      
   </article>

<?php 

// Include scripts, and closing tags for elements opened in head.php
require_once "inc/foot.php";