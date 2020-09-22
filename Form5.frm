VERSION 5.00
Begin VB.Form Form5 
   Caption         =   "DO YOU HAVE?"
   ClientHeight    =   2730
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5085
   Icon            =   "Form5.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   ScaleHeight     =   2730
   ScaleWidth      =   5085
   StartUpPosition =   2  'CenterScreen
   Begin VB.OptionButton Option1 
      Caption         =   "THE CD IS IN ANOTHER DRIVE"
      Height          =   855
      Left            =   1200
      TabIndex        =   6
      Top             =   960
      Width           =   2295
   End
   Begin VB.OptionButton Option3 
      Caption         =   "THE CD IS IN MY E:/ DRIVE"
      Height          =   735
      Left            =   1200
      TabIndex        =   5
      Top             =   360
      Width           =   2295
   End
   Begin VB.CommandButton Command4 
      Caption         =   "WHATS THAT??"
      Height          =   735
      Left            =   3960
      TabIndex        =   4
      Top             =   480
      Width           =   855
   End
   Begin VB.CommandButton Command3 
      Caption         =   "CANCEL"
      Height          =   495
      Left            =   3480
      TabIndex        =   3
      Top             =   2040
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "NEXT"
      Height          =   495
      Left            =   1920
      TabIndex        =   2
      Top             =   2040
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "BACK"
      Height          =   495
      Left            =   360
      TabIndex        =   1
      Top             =   2040
      Width           =   1215
   End
   Begin VB.OptionButton Option2 
      Caption         =   "THE CD IS IN MY D:/ DRIVE"
      Height          =   855
      Left            =   1200
      TabIndex        =   0
      Top             =   -240
      Width           =   2295
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
Form4.Show
Form5.Hide
End Sub

Private Sub Command2_Click()
If Option2.Value = True Then
Shell ("D:\setup.exe")
End If
If Option3.Value = True Then
Shell ("E:\setup.exe")
End If
If Option1.Value = True Then
Form5.Hide
Form10.Show
End If

End Sub


Private Sub Command3_Click()
End

End Sub


Private Sub Command4_Click()
Form6.Show
Form5.Hide

End Sub


