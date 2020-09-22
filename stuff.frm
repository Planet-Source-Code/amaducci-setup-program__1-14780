VERSION 5.00
Begin VB.Form Form3 
   BackColor       =   &H80000007&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "HELL"
   ClientHeight    =   3195
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4680
   Icon            =   "stuff.frx":0000
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Interval        =   2000
      Left            =   240
      Top             =   2520
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H000000FF&
      Caption         =   "ENTER"
      Default         =   -1  'True
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   1440
      MaskColor       =   &H000080FF&
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   2040
      Visible         =   0   'False
      Width           =   1815
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H000000FF&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      IMEMode         =   3  'DISABLE
      Left            =   960
      PasswordChar    =   "~"
      TabIndex        =   0
      Top             =   1320
      Visible         =   0   'False
      Width           =   2895
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000008&
      Caption         =   "YOU ARE IN A RESTRICTED AREA!!"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   3255
      Left            =   840
      TabIndex        =   2
      Top             =   480
      Width           =   4695
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
If Text1.Text = "manthux" Then
MsgBox "WELCOME"
Form2.Show
Form3.Hide

Else
MsgBox "GO TO HELL"

End If

End Sub

Private Sub Form_Activate()
Unload Form1
Unload Form2

End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Alt As Integer)
Timer1.Enabled = False

End Sub


Private Sub Label1_Click()
Command1.Visible = True
Text1.Visible = True
Label1.Visible = False
Form3.BackColor = &H80FF&
Timer1.Enabled = False


End Sub


Private Sub Text1_Change()
Command1.Enabled = True


End Sub


Private Sub Timer1_Timer()
MsgBox "SOOOO SORRRRRY"
End

End Sub


