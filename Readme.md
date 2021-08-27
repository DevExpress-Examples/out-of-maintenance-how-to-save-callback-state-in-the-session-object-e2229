<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128577795/13.1.8%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E2229)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to save callback state in the Session object


<p>The ASPxPivotGrid stores its intermediate state in a hidden <em>CallbackState</em> field. In some cases, especially when the ASPxPivotGrid is connected to a large OLAP cube, this state can have a significant size. If the <em>CallbackState</em> field affects your web application performance, you can store it in the Session object or a static variable. You can use the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxPivotGridASPxPivotGrid_CustomLoadCallbackStatetopic">ASPxPivotGrid.CustomLoadCallbackState</a> and <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxPivotGridASPxPivotGrid_CustomSaveCallbackStatetopic">ASPxPivotGrid.CustomSaveCallbackState</a>  events to implement a custom saving / loading mechanism. This example demonstrates how to do this.</p>

<br/>


