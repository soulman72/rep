﻿Imports System.Runtime.Serialization

Namespace WCFContracts.V1

    <DataContract(Name:="Rating")> _
    Public Class Rating
        <DataMember()> _
        Public ID As Integer = 0

        <DataMember()> _
        Public ItemID As Integer = 0

        <DataMember()> _
        Public UserID As Integer = 0

        <DataMember()> _
        Public UserName As String

        <DataMember()> _
        Public Comment As String

        <DataMember()> _
        Public Subject As String

        <DataMember()> _
        Public Value As Integer = 0

        <DataMember()> _
        Public RatingTable As String

        Public Sub New()

        End Sub

        Public Sub New(ByVal t As tblRating)

            Dim uBLL As New BLLFriends

            Me.ItemID = t.ItemID
            Me.ID = t.ID
            Me.Value = t.Rating
            Me.UserID = t.UserID
            Me.Comment = t.Comment
            Me.Subject = t.Subject
            Me.RatingTable = CreateTable(t.Rating)

            Dim u As User = uBLL.GetUserByID(t.UserID)

            If Not u Is Nothing Then
                Me.UserName = u.Username
            End If

        End Sub

        Private Function CreateTable(ByVal Value As Integer) As String

            Dim sb As New StringBuilder

            sb.AppendLine("<table border='0'>")
            sb.AppendLine("<tr>")
            For i = 1 To 5
                sb.AppendLine("<td>")
                If i <= Value Then
                    sb.AppendLine("<img src='../../content/images/star_yellow.png' height='8' width='8' alt='Yellow Star' />")
                Else
                    sb.AppendLine("<img src='../../content/images/star_grey.png' height='8' width='8' alt='Grey Star' />")
                End If
                sb.AppendLine("</td>")
            Next
            sb.AppendLine("</tr>")
            sb.AppendLine("</table>")

            Return sb.ToString
        End Function
    End Class


    <DataContract(Name:="MovieItem")> _
    Public Class MovieItem

        Public Sub New()
            Me.Ratings = New List(Of Rating)
            Me.GenreIDs = New List(Of Integer)
            Me.GenreNames = New List(Of String)
        End Sub

        <DataMember()> _
        Public ID As Integer = 0

        <DataMember()> _
        Public Title As String = ""

        <DataMember()> _
        Public GenreID As Integer = 0

        <DataMember()> _
        Public GenreName As String = ""

        <DataMember()> _
        Public GenreIDs As List(Of Integer)

        <DataMember()> _
        Public GenreNames As List(Of String)

        <DataMember()> _
        Public MediaTypeID As Integer = 0

        <DataMember()> _
        Public MediaTypeName As String = ""

        <DataMember()> _
        Public MediaFormatID As Integer = 0

        <DataMember()> _
        Public MediaFormatName As String = ""

        <DataMember()> _
        Public AuthorID As Integer = 0

        <DataMember()> _
        Public AuthorName As String = "Unknown"

        <DataMember()> _
        Public Actor1ID As Integer = 0

        <DataMember()> _
        Public Actor1Name As String = "Unknown"

        <DataMember()> _
        Public Actor2ID As Integer = 0

        <DataMember()> _
        Public Actor2Name As String = "Unknown"

        <DataMember()> _
        Public Actor3ID As Integer = 0

        <DataMember()> _
        Public Actor3Name As String = "Unknown"

        <DataMember()> _
        Public DirectorID As Integer = 0

        <DataMember()> _
        Public DirectorName As String = "Unknown"

        <DataMember()> _
        Public PublishDate As String = ""

        <DataMember()> _
        Public Publisher As String = ""

        <DataMember()> _
        Public OwnerName As String = ""

        <DataMember()> _
        Public OwnerID As Integer = 0

        <DataMember()> _
        Public EAN As String = ""

        <DataMember()> _
        Public CoverUrlMediaManager As String = ""

        <DataMember()> _
        Public Description As String = ""

        <DataMember()> _
        Public AudienceRank As String = ""

        <DataMember()> _
        Public AmazonSalesRank As Integer = 0

        <DataMember()> _
        Public ASIN As String = ""

        <DataMember()> _
        Public SmallImageUrl As String = ""

        <DataMember()> _
        Public MediumImageUrl As String = ""

        <DataMember()> _
        Public LargeImageUrl As String = ""

        <DataMember()> _
        Public BorrowedByID As Integer = 0

        <DataMember()> _
        Public BorrowedByName As String = ""

        <DataMember()> _
        Public BorrowedSince As DateTime

        <DataMember()> _
        Public BorrowCount As Integer

        <DataMember()>
        Public DateAdded As DateTime

        <DataMember()>
        Public Ratings As List(Of Rating)

        <DataMember()> _
        Public CtrlID As String = ""

        <DataMember()> _
        Public ResultMessage As String = ""

    End Class



End Namespace