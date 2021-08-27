<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128542044/15.1.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E262)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/TestGridViewSite81/Default.aspx) (VB: [Default.aspx](./VB/TestGridViewSite81/Default.aspx))
* [Default.aspx.cs](./CS/TestGridViewSite81/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/TestGridViewSite81/Default.aspx.vb))
* [MasterPage.master.cs](./CS/TestGridViewSite81/MasterPage.master.cs) (VB: [MasterPage.master.vb](./VB/TestGridViewSite81/MasterPage.master.vb))
<!-- default file list end -->
# How to preserve hidden columns values when the ASPxGridView updates its data source


<p>If a column is not in visible in the ASPxGridView and the Update button is clicked, the ASPxGridView will not pass this row value to the update command. So, a value in this column can be lost. To prevent this undesired data loss, here are two solutions:</p><p>1) change the UpdateCommand so that it does not try to update column values which are not visible in a GUI control;<br />
2) handle the RowUpdating event, obtain a value of a hidden column and add it to the e.NewValues dictionary</p>

<br/>


