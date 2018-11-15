<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
<!-- default file list end -->
# How to save callback state in the Session object


<p>The ASPxPivotGrid stores its intermediate state in a hidden <em>CallbackState</em> field. In some cases, especially when the ASPxPivotGrid is connected to a large OLAP cube, this state can have a significant size. If the <em>CallbackState</em> field affects your web application performance, you can store it in the Session object or a static variable. You can use the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxPivotGridASPxPivotGrid_CustomLoadCallbackStatetopic">ASPxPivotGrid.CustomLoadCallbackState</a> and <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxPivotGridASPxPivotGrid_CustomSaveCallbackStatetopic">ASPxPivotGrid.CustomSaveCallbackState</a>  events to implement a custom saving / loading mechanism. This example demonstrates how to do this.</p>

<br/>


