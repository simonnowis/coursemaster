<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="faq.aspx.cs" Inherits="howtouse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CenterContentPlaceHolder" Runat="Server">

    
  <div class="pages_title">
  <h2>常见问题 <span>FAQ</span></h2>
  </div> 
   
   <div class="content">
         <div class="left_full">
        <p>Q:我需要一直开着网页去挂机吗？</p>
        <p>A:不需要，只要在管理页面提交了相关的课程信息，服务器就会自动去帮你加课了</p>
        <br/>
        <p>Q:如果有多个人想加同一节课呢？</p>
        <p>A:选课神器会给根据加课申请的提交时间来按顺序给每个人去加课</p>
        <br/>
        <p>Q:能保证一定能加到自己要的课吗？</p>
        <p>A:不能，神器有一个非常短的刷新间隔，但是如果其他人碰巧就在elion上，他能在这个20秒的间隔内把课加走的话，神器就加不到了</p>
        <br/>
        <p>Q:如果我有A课的section 1想换section 2，能用神器吗？是否要先drop section1？</p>
        <p>A:神器很智能，并不需要先drop section 1，他会在加到section 2的时候再把你的section 1 drop掉</p>
        <br/>
        <p>Q:如果我有A课，但是我想要的B课时间跟A课冲突，也能自动加上吗？</p>
        <p>A:选课神器能自动加上B课，然后drop A课。但是如果要加的课与2节课冲突，这时候elion为了安全起见是设置成需要你手动drop掉其中一节的，
            神器也没有办法解决，你必须先drop一节，以保证你要加的课最多只能有一节是跟它冲突的。</p>
        <br/>
        <p>Q:……</p>
        <p>A:……</p>
        </div>
   </div>
   
   <div class="clear"></div> 


</asp:Content>

