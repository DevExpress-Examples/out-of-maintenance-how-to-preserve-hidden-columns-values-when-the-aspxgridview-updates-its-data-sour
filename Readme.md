# How to preserve hidden columns values when the ASPxGridView updates its data source


<p>If a column is not in visible in the ASPxGridView and the Update button is clicked, the ASPxGridView will not pass this row value to the update command. So, a value in this column can be lost. To prevent this undesired data loss, here are two solutions:</p><p>1) change the UpdateCommand so that it does not try to update column values which are not visible in a GUI control;<br />
2) handle the RowUpdating event, obtain a value of a hidden column and add it to the e.NewValues dictionary</p>

<br/>


