using System;
using DevExpress.Web.ASPxPivotGrid;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

    }
    string GetPivotStateID(ASPxPivotGrid pivotGrid) {
        return GetType().FullName + "_" + pivotGrid.ID;
    }
    protected void ASPxPivotGrid1_CustomSaveCallbackState(object sender, 
                                  PivotGridCallbackStateEventArgs e) {
        Session[GetPivotStateID((ASPxPivotGrid)sender)] = e.CallbackState;
        e.CallbackState = null;
        e.Handled = true;
    }
    protected void ASPxPivotGrid1_CustomLoadCallbackState(object sender, 
                                  PivotGridCallbackStateEventArgs e) {
        e.CallbackState = (string)Session[GetPivotStateID((ASPxPivotGrid)sender)];
        e.Handled = true;
    }
}
