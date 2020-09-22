VERSION 5.00
Begin VB.Form Form8 
   Caption         =   "SETUP"
   ClientHeight    =   2730
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5085
   Icon            =   "Form8.frx":0000
   LinkTopic       =   "Form8"
   MaxButton       =   0   'False
   ScaleHeight     =   2730
   ScaleWidth      =   5085
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command3 
      Caption         =   "CANCEL"
      Height          =   495
      Left            =   3480
      TabIndex        =   2
      Top             =   2040
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "NEXT"
      Height          =   495
      Left            =   1920
      TabIndex        =   1
      Top             =   2040
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "BACK"
      Height          =   495
      Left            =   360
      TabIndex        =   0
      Top             =   2040
      Width           =   1215
   End
   Begin VB.Label label1 
      Caption         =   "SERIAL NUMBER:"
      Height          =   255
      Left            =   1080
      TabIndex        =   3
      Top             =   360
      Width           =   1575
   End
End
Attribute VB_Name = "Form8"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
Form5.Show
Form8.Hide


End Sub


Private Sub Command2_Click()
Shell ("D:\install.exe")
End Sub

Private Sub Command3_Click()
End

End Sub


Private Sub Command4_Click()
Shell ("D:/install.exe")
End Sub

Private Sub Form_Activate()
Unload Form1
Unload Form2
Unload Form3
Unload Form5
Unload Form6
Unload Form9
End Sub

