Imports System
Imports DevExpress.Web.ASPxPivotGrid

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

    End Sub
    Private Function GetPivotStateID(ByVal pivotGrid As ASPxPivotGrid) As String
        Return Me.GetType().FullName & "_" & pivotGrid.ID
    End Function
    Protected Sub ASPxPivotGrid1_CustomSaveCallbackState(ByVal sender As Object, ByVal e As PivotGridCallbackStateEventArgs)
        Session(GetPivotStateID(DirectCast(sender, ASPxPivotGrid))) = e.CallbackState
        e.CallbackState = Nothing
        e.Handled = True
    End Sub
    Protected Sub ASPxPivotGrid1_CustomLoadCallbackState(ByVal sender As Object, ByVal e As PivotGridCallbackStateEventArgs)
        e.CallbackState = CStr(Session(GetPivotStateID(DirectCast(sender, ASPxPivotGrid))))
        e.Handled = True
    End Sub
End Class
