<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default"  MasterPageFile="~/MasterPage.master"%>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxwgv" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxe" %>
    
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="CC" runat="Server">
    <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" Width="581px" OnRowUpdating="ASPxGridView1_RowUpdating" DataSourceID="AccessDataSource1" KeyFieldName="CategoryID">
        <Columns>
            <dxwgv:GridViewCommandColumn VisibleIndex="0" ShowEditButton="True"/>
            <dxwgv:GridViewDataTextColumn FieldName="CategoryID" ReadOnly="True" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn FieldName="CategoryName" Visible="False" VisibleIndex="2">
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn FieldName="Description" VisibleIndex="2">
            </dxwgv:GridViewDataTextColumn>
        </Columns>
    </dxwgv:ASPxGridView>
    <br />
    <br />
    <dxwgv:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" Width="581px" DataSourceID="AccessDataSource1" KeyFieldName="CategoryID" EnableRowsCache="False">
        <Columns>
            <dxwgv:GridViewDataTextColumn FieldName="CategoryID" ReadOnly="True" VisibleIndex="0">
                <EditFormSettings Visible="False" />
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="1">
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn FieldName="Description" VisibleIndex="2">
            </dxwgv:GridViewDataTextColumn>
        </Columns>
    </dxwgv:ASPxGridView>
    <br />
    <dxe:ASPxButton ID="ASPxButton1" runat="server" Text="Refresh page" Width="202px">
    </dxe:ASPxButton>
    <br />
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
        SelectCommand="SELECT * FROM [Categories]" DeleteCommand="DELETE FROM [Categories] WHERE [CategoryID] = ?" InsertCommand="INSERT INTO [Categories] ([CategoryID], [CategoryName], [Description], [Picture]) VALUES (?, ?, ?, ?)" UpdateCommand="UPDATE [Categories] SET [CategoryName] = ?, [Description] = ? WHERE [CategoryID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="CategoryID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="CategoryName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="CategoryID" Type="Int32" />
            <asp:Parameter Name="CategoryName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Picture" Type="Object" />
        </InsertParameters>
    </asp:AccessDataSource>
    &nbsp; &nbsp;&nbsp;
    <br />
</asp:Content>