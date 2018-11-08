<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v13.1, Version=13.1.8.0, Culture=neutral, 
                       PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPivotGrid" TagPrefix="dxwpg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
                      "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dxwpg:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" 
        OLAPConnectionString="provider=MSOLAP;
                              data source=http://demos.devexpress.com/Services/OLAP/msmdpump.dll; 
                              initial catalog=Adventure Works DW Standard Edition;
                              cube name=Adventure Works;" 
        OnCustomLoadCallbackState="ASPxPivotGrid1_CustomLoadCallbackState" 
        OnCustomSaveCallbackState="ASPxPivotGrid1_CustomSaveCallbackState">
            <Fields>
                <dxwpg:PivotGridField ID="fieldCountry1" Area="RowArea" AreaIndex="0" 
                    Caption="Country"
                    FieldName="[Customer].[Country].[Country]">
                </dxwpg:PivotGridField>
                <dxwpg:PivotGridField ID="fieldCity1" Area="RowArea" AreaIndex="1" 
                    Caption="City"
                    FieldName="[Customer].[City].[City]">
                </dxwpg:PivotGridField>
                <dxwpg:PivotGridField ID="fieldCustomerCount" Area="DataArea" AreaIndex="0" 
                    Caption="Customer Count"
                    FieldName="[Measures].[Customer Count]">
                </dxwpg:PivotGridField>
            </Fields>
        </dxwpg:ASPxPivotGrid>
    </div>
    </form>
</body>
</html>
