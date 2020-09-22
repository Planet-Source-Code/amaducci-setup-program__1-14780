VERSION 5.00
Object = "{2398E321-5C6E-11D1-8C65-0060081841DE}#1.0#0"; "Vtext.dll"
Begin VB.Form Form2 
   Caption         =   "INSTRUCTIONS"
   ClientHeight    =   2730
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5085
   Icon            =   "Form2.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   ScaleHeight     =   2730
   ScaleWidth      =   5085
   StartUpPosition =   2  'CenterScreen
   Begin HTTSLibCtl.TextToSpeech TextToSpeech1 
      Height          =   2775
      Left            =   1080
      OleObjectBlob   =   "Form2.frx":030A
      TabIndex        =   4
      Top             =   0
      Visible         =   0   'False
      Width           =   2895
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
      Enabled         =   0   'False
      Height          =   495
      Left            =   360
      TabIndex        =   1
      Top             =   2040
      Width           =   1215
   End
   Begin VB.Label label1 
      Caption         =   "PLEASE FOLLOW THE FOLOWING STEPS TO COMPLETE SETUP"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1575
      Left            =   720
      TabIndex        =   0
      Top             =   360
      Width           =   3015
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command2_Click()
Form4.Show
Form2.Hide
End Sub


Private Sub Command3_Click()

End

End Sub


Private Sub Form_Load()
Form1.Hide
Dim x As String
x = InputBox("What is your name?", "")
TextToSpeech1.Speak ("hello..." & x)
End Sub
