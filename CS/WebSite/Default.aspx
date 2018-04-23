<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v11.1, Version=11.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPanel" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v11.1, Version=11.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPivotGrid" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.XtraCharts.v11.1.Web, Version=11.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraCharts.Web" TagPrefix="dxchartsui" %>
<%@ Register Assembly="DevExpress.XtraCharts.v11.1, Version=11.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraCharts" TagPrefix="cc1" %>

<%@ Register assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" Width="299px"></asp:TextBox>

                <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <dx:ASPxPivotGrid runat="server" DataSourceID="AccessDataSource1" 
    EnableCallBacks="False" ID="ASPxPivotGrid1" 
    onfieldareachanged="ASPxPivotGrid1_FieldAreaChanged">
                    <Fields>
                        <dx:PivotGridField FieldName="Region" ID="fieldRegion" Area="ColumnArea" 
                            AreaIndex="0" TotalsVisibility="None">
                        </dx:PivotGridField>
                        <dx:PivotGridField FieldName="Year" ID="fieldYear" Area="RowArea" AreaIndex="0">
                        </dx:PivotGridField>
                        <dx:PivotGridField FieldName="GSP" ID="fieldGSP" Area="DataArea" AreaIndex="0">
                        </dx:PivotGridField>
                    </Fields>
                    <OptionsChartDataSource ProvideColumnGrandTotals="False" 
                        ProvideRowGrandTotals="False">
                    </OptionsChartDataSource>
                </dx:ASPxPivotGrid>
                <dxchartsui:WebChartControl ID="WebChartControl1" runat="server" 
                    DataSourceID="ASPxPivotGrid1" EnableCallBacks="False" Height="399px" 
                    SeriesDataMember="Series" Width="866px">
                    <seriestemplate argumentdatamember="Arguments" 
                        valuedatamembersserializable="Values">
                        <viewserializable>
                            <cc1:SideBySideBarSeriesView>
                            </cc1:SideBySideBarSeriesView>
                        </viewserializable>
                        <labelserializable>
                            <cc1:SideBySideBarSeriesLabel LineVisible="True" Visible="False">
                                <fillstyle>
                                    <optionsserializable>
                                        <cc1:SolidFillOptions />
                                    </optionsserializable>
                                </fillstyle>
                            </cc1:SideBySideBarSeriesLabel>
                        </labelserializable>
                        <pointoptionsserializable>
                            <cc1:PointOptions>
                            </cc1:PointOptions>
                        </pointoptionsserializable>
                        <legendpointoptionsserializable>
                            <cc1:PointOptions>
                            </cc1:PointOptions>
                        </legendpointoptionsserializable>
                    </seriestemplate>
                    <legend alignmenthorizontal="Center" alignmentvertical="TopOutside" 
                        direction="LeftToRight" maxverticalpercentage="30"></legend>
                    <diagramserializable>
                        <cc1:XYDiagram>
                            <axisx visibleinpanesserializable="-1">
                                <label staggered="True" />
                                <range sidemarginsenabled="True" />
                            </axisx>
                            <axisy visibleinpanesserializable="-1">
                                <range sidemarginsenabled="True" />
                            </axisy>
                        </cc1:XYDiagram>
                    </diagramserializable>
                    <fillstyle>
                        <optionsserializable>
                            <cc1:SolidFillOptions />
                        </optionsserializable>
                    </fillstyle>
                </dxchartsui:WebChartControl>
            </ContentTemplate>
        </asp:UpdatePanel>
        &nbsp;&nbsp;<br />
        &nbsp;<br />
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/gsp.mdb"
            SelectCommand="SELECT * FROM [GSP]"></asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
