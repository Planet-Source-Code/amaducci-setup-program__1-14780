VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "PASSWORD"
   ClientHeight    =   1665
   ClientLeft      =   150
   ClientTop       =   435
   ClientWidth     =   5295
   Icon            =   "interesting.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   1665
   ScaleWidth      =   5295
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   WhatsThisHelp   =   -1  'True
   Begin VB.CommandButton Command2 
      Height          =   195
      Left            =   5160
      TabIndex        =   3
      Top             =   1560
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Timer Timer1 
      Interval        =   15000
      Left            =   120
      Top             =   1200
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Try Password"
      Enabled         =   0   'False
      Height          =   495
      Left            =   2760
      TabIndex        =   2
      Top             =   1080
      Width           =   2055
   End
   Begin VB.TextBox Text1 
      Height          =   405
      IMEMode         =   3  'DISABLE
      Left            =   840
      PasswordChar    =   "*"
      TabIndex        =   0
      Top             =   600
      Width           =   4095
   End
   Begin VB.Label Label1 
      Caption         =   "Enter the password within 15 seconds:"
      Height          =   375
      Left            =   1200
      TabIndex        =   1
      Top             =   240
      Width           =   3135
   End
   Begin VB.Menu mnufile 
      Caption         =   "&FILE"
      Begin VB.Menu mnuQuit 
         Caption         =   "&QUIT"
      End
      Begin VB.Menu mnusecret 
         Caption         =   "secret"
         Shortcut        =   %{BKSP}
         Visible         =   0   'False
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
If Text1.Text = "" Then
Timer1.Enabled = False
Form2.Show
Form1.Hide

Else
MsgBox "Sorry, friend, I don't konw you."
End

End If

End Sub

Private Sub File_Click()

End Sub

Private Sub Command2_Click()
Form3.Show
Timer1.Enabled = False
Form1.Hide

End Sub

Private Sub mnuclock_Click()

End Sub

Private Sub mnutime_Click()

End Sub


Private Sub Form_DblClick()
mnusecret.Visible = True

End Sub

Private Sub mnuQuit_Click()

End

End Sub


Private Sub secret_Click()
Command2.Enabled = True
End Sub

Private Sub mnusecret_Click()
Command2.Visible = True

End Sub

Private Sub Text1_Change()
Command1.Enabled = True

End Sub

Private Sub Timer1_Timer()
MsgBox "Sorry, your time is up."

End

End Sub



