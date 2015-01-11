<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact - Backup.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CenterContentPlaceHolder" Runat="Server">

      <div class="pages_title">
  <h2>Get in Touch<span>With Us</span></h2>
  </div> 
   
   <div class="content">
        <div class="left23">
            <h2>Wedding traditions and customs vary greatly</h2>
            <p>
            <a href="images/slider/slide1.jpg" rel="prettyPhoto[gallery]" title="Lorem ipsum sit amet"><img src="images/pic_left.jpg" alt="" title="" border="0" class="left_pic" /></a>
            Lorem ipsum dolor sit amet, consectetur adi pisi cing elit, sed do eiusmod tempor <strong>exercitationem</strong> ut labore et dolore magna aliqua. Ut e  ut aliquid ex  ut aliquid ex  nim ad <strong><a href="#">ullam</a></strong> quis nostrud exercitation ullamco laboris nisi <strong><a href="#">consequatur</a></strong> ut aliquip ex ea commodo consequat. <br /><br />
            Ut enim ad minima veniam, quis nostru <strong>exercitationem</strong> ullam corporis laboriosam, nisi ut aliquid ex ea commodi <strong><a href="#">consequatur</a></strong>
            </p>
            <a href="#" class="more">read more</a>

            
            
            <div class="contact_info_blocks">
            
            <div class="contact_info">
            <h3>Ceremony Location</h3>
            <div class="icon"><a href="images/slider/slide1.jpg" rel="prettyPhoto[gallery]" title="Lorem ipsum sit amet"><img src="images/icon_home.png" alt="" title="" border="0"/></a></div><p>Dullamco nisi <strong><a href="#">consequatur</a></strong> ut aliquiut ex  ut s nostrud exercitation ullam ex  nim a</p>
            </div>
            <div class="contact_info">
            <h3>Phone Reservation</h3>
            <div class="icon"><a href="tel:1234 5678"><img src="images/icon_phone.png" alt="" title="" border="0"/></a></div><p>Dullamco laboris nisi <strong><a href="#">consequatur</a></strong>  ex  ut s nostrud exercitation ullam ex  nim a</p>
            </div>

            </div>
            
            
			<div class="form_content">

                <form id="form1" method="post" action="#">                
                 <h3 class="form_subtitle">Send a message</h3>
          		<div class="form">
                    <div class="form_row">
                    <label>your name:</label>
                    <input type="text" class="form_input" name="name" />
                    </div>
                    <div class="form_row">
                    <label>your email:</label>
                    <input type="text" class="form_input" name="email" />
                    </div>
                    <div class="form_row">
                    <label>phone:</label>
                    <input type="text" class="form_input" name="url" />
                    </div>
                    <div class="form_row">
                    <label>message:</label>
                    <textarea class="form_textarea" name="comment"></textarea>
                    </div>
                    <div class="form_row">
                    <input type="submit" class="form_submit_contact" value="Send Message" />
                    </div> 
          		</div>
                
                </form>
            </div>
             
        </div>
		
   		<div class="left13 sidebar">
        
			<h2>Wedding Location</h2>
<div class="gmap"><iframe width="100%" height="150" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?q=houston+usa&amp;hl=ro&amp;sll=37.0625,-95.677068&amp;sspn=53.961216,114.169922&amp;hnear=Houston,+Harris,+Texas&amp;t=m&amp;z=5&amp;output=embed"></iframe></div>

            
            <h2>Latest Blog Posts</h2>
			<ul>
                <li><a href="#">Sed do eiusmod tempor</a></li> 
                <li><a href="#">Incididunt ut labore et dolore </a></li>
                <li><a href="#">Lolor sit amet  consectetur adipisicing </a></li>
                <li><a href="#">Elit  sed do eiusmod tempor </a></li>
                <li><a href="#">Incididunt ut labore et dolore magna aliqua</a></li>
            </ul>
            
            <h2>Latest tweets</h2>
            <div class="tweet"></div>
            <img src="images/icon_tweets.gif" alt="" title="" class="tweet_icon" />
            
            <h2>Flickr photos</h2>
            <div class="flickr_photos">
            <ul id="basicuse" class="thumbs"></ul>
            </div>
            
            
             
        </div>
		
        <div class="clear"></div>
       
   </div>
   
   <div class="clear"></div> 
   
</asp:Content>

