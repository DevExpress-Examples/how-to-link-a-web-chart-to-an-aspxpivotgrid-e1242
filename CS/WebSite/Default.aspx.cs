using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web.ASPxPivotGrid;

    public partial class _Default : System.Web.UI.Page {

        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = DateTime.Now.ToString("F");
        }

        protected void ASPxPivotGrid1_FieldAreaChanged(object sender, DevExpress.Web.ASPxPivotGrid.PivotFieldEventArgs e)
        {
            ASPxPivotGrid pivot = (ASPxPivotGrid)sender;            
            pivot.OptionsChartDataSource.ProvideColumnGrandTotals = pivot.Fields.GetVisibleFieldCount(DevExpress.XtraPivotGrid.PivotArea.ColumnArea ) == 0 ? true : false;
            pivot.OptionsChartDataSource.ProvideRowGrandTotals = pivot.Fields.GetVisibleFieldCount(DevExpress.XtraPivotGrid.PivotArea.RowArea) == 0 ? true : false;
        }
    }
