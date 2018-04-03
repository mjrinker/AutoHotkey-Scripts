; http://www.autohotkey.com/board/topic/21213-how-to-convert-image-data-jpegpnggif-to-hbitmap/page__st__15#entry139257
;#include <_Struct>
DetectHiddenWindows,On ; <<< Oh, Ic. This allows for manipulating windows before they are shown
SetWinDelay,0
Gui, new, +hwndhPic1
Gui -Caption +AlwaysOnTop
Gui, Margin, 0, 0
WinSet,ExStyle,+0x00080000, ahk_id %hPic1%

GoSub, LoadPictureToBuffer ; and initialise nSize

hData := DllCall("GlobalAlloc", UInt,2, UInt, nSize )
pData := DllCall("GlobalLock", UInt,hData )
DllCall( "RtlMoveMemory", UInt,pData, UInt,&Buffer, UInt,nSize )
DllCall( "GlobalUnlock", UInt,hData )
DllCall( "ole32\CreateStreamOnHGlobal", UInt,hData, Int,True, UIntP,pStream )

DllCall( "LoadLibrary", Str,"gdiplus" )
VarSetCapacity(si, 16, 0), si := Chr(1)
DllCall( "gdiplus\GdiplusStartup", UIntP,pToken, UInt,&si, UInt,0 )

DllCall( "gdiplus\GdipCreateBitmapFromStream", UInt,pStream, UIntP, pBitmap )
DllCall( "gdiplus\GdipGetImageWidth" , "Uint", pBitmap, "UintP", iWidth)
DllCall( "gdiplus\GdipGetImageHeight", "Uint", pBitmap, "UintP", iHeight)
DllCall( "gdiplus\GdipCreateHBITMAPFromBitmap", UInt,pBitmap, UIntP, hBitmap, UInt,0 )

; Idea came from http://www.nuonsoft.com/blog/2009/05/27/how-to-use-updatelayeredwindow/
hdcScreen := DllCall("GetDC", "Ptr", NULL, "Ptr") ; get screen DC handle
hDC := DllCall("CreateCompatibleDC", "Ptr", hdcScreen, "Ptr") ; create a compatible DC to screen's
hBmpOld := DllCall("SelectObject", "Ptr", hDC, "Ptr", hBitmap) ; backing hDC with hBmp

; Call UpdateLayeredWindow
BLEMDFUNCTION := "BYTE BlendOp, BYTE BlendFlags, BYTE SourceConstantAlpha, BYTE AlphaFormat"
POINT := "int x, int y"
SIZE := "int cx, int cy"
blend := new _Struct(BLEMDFUNCTION)

AC_SRC_OVER := 0
AC_SRC_ALPHA := 1
blend.BlendOp := AC_SRC_OVER ;
blend.SourceConstantAlpha := 255 ;
blend.AlphaFormat := AC_SRC_ALPHA ;

ptPos := new _struct(POINT)
sizeWnd := new _struct(SIZE)
sizeWnd.cx := iWidth
sizeWnd.cy := iHeight ;
ptSrc := new _struct(POINT)
ULW_ALPHA := 2
DllCall("UpdateLayeredWindow", "Ptr", hPic1, "Ptr", hdcScreen, "Ptr", ptPos[], "Ptr", sizeWnd[], "Ptr", hDC, "Ptr", ptSrc[], "int", 0, "Ptr", blend[], "int", ULW_ALPHA) ;

DllCall("SelectObject", "ptr", hDC, "ptr", hBmpOld, "Ptr") ;
DllCall("DeleteObject", "Ptr", hBmp, "int") ;
DllCall("DeleteDC", "ptr", hDC, "int") ;
DllCall("ReleaseDC", "ptr", NULL, "ptr", hdcScreen, "int") ;

DllCall( "gdiplus\GdipDisposeImage", UInt,pBitmap )
DllCall( "gdiplus\GdiplusShutdown", UInt,pToken )
DllCall( NumGet(NumGet(1*pStream)+8 ), UInt,pStream )

Gui, Show, % "w" iWidth " h" iHeight , Just for fun

Return ; // End of Auto-Execute section

LoadPictureToBuffer: ; creates Binary buffer with PNG image sized 164x65 ( 1725 bytes )
; od -t x1 -w40 gradient.png | sed -n 's/^[0-9a-f]*//; s/ //g; p;'
hex=
( Join
89504e470d0a1a0a0000000d494844520000001400000064080600000086ab10cc00000006624b47
4400ff00ff00ffa0bda793000000097048597300000b1300000b1301009a9c180000000774494d45
07dc0b07062307676fe12c0000071c4944415458c37d994b6e24451086bfbf5408042c913800ac90
e01e3cf688357760c7863bb062c5120dc7600f1247003cb6c71ecfd8ed57bbab83454666466665b9
ad96bbabb2222322fff8e3d1faf4d35f76c007e4978109943ea27a19f277bf11effbe5dd84f10f70
2c6f71141c0d8e328ec002e95abe6e4a6bfd7e790bfe991127189ff856c2b04e3d595abcd2906a48
7efd3703fffa0e75617dc0302445ab00f92a214b6b901096049e904c286e3261411365c1ae7fe338
b93d9684be9c314e104b70b495f5f54135de8f2f050de164429c028b89c50fc082a35f005f011ffb
fb4be03760c17cbdf921a5ef2f93c9d5e91931003f023f7716fe61e20f8c3f257e329266aa8b5e4e
c019b098c3c3777d01fcdc586dd50b4a1bfdaebc5e45e3d30938c58aa06cf6af980b89880e9f95d6
2c11bfc0e96cb093b8167c40b5fb2f8d0f20dd4f87f0970b295122e376f2352796a26029feb48d53
4dc2f2edecaa45092d4cbeec5470283e812f601326f9df17be79122ace2008749db20fbfdb502efe
ff2efbd01579d90b5cf0e007be467c3f52ce857d6f69cd313c770a30fb96672616b598fb01f80cf8
0de36fbff1b9e05be01b1714353eaf02c5b98ca504987948a528f92aabe6a8cfaec9e793ae196708
665f78a6008115bbf6d455b1186f9e01ccbeebabc0791130ca6451623251568c20cb32a20f5fa1ea
93061ee981980952ec864dfc6612e8bbde0a6e80f75bdc268d9cfae54182d4b31b77fe2eb00138b7
08d4962c16d5285a621e71989d65fd27abbe380f91726c805ef1163739028b12179e9bbb602ea729
ce310e6e2281d65512403ce3907310e7d9fc39f8e155610fdf441ab20c25bff83d332e328ce6e0d9
8b92fd3442212655ed9a04a974c25834192e3cd8e922030638cfd0517d96142941431347552fc58a
64a06e73ed227f9903375d4a2c71d5c8ee22cf1ad32ff38dd9b2fae2d261d16bd5971bf57bcdc7af
694e393d79ef687f6fa55d3d817abed5b9f726eef32e09d8d69c748c88449e7240ab017ebe7f11d1
35a9622942e700a51ac8b9e6105266fc7c119d3b77e4721999781333e95b0e82cbc89f31f4b2c0e3
4691da7c2e5fe4275c60d3b2f3ebaca106dc18c32f5cba22f0e3dc45c615a464d525820277296887
43a692b1e3b0e688d75e41205b6bd784a3b9b24989aa6117096f3cfbc51233b2378a4c6e18c69bb8
e9dc85d41bb286ac0822296e95d6fcde55cc8473078907c49de0ddc2899d17a5e6ac1e80c722dc60
1a44ffeb1015ed7fb57d09b8ff6a8a2d69346e7b65c6471ab1ce1ae0577d31356775a9beb90a5584
1505ba2ec1d3ea555f36cf03f27cdb845fdf39996fa2b2b6c9417de89593ae8546d3a398d46d1e1a
9b3e49e5d775a8ae90b60b4fa5cd0b128c78285a9bacb6e832f52464bccd758b2c9bbc76e275a91c
023f8f2a3caf8750c336eb88b8f1ea5e4dcd585120f3165869f366a379503c3e020f82771a65da76
d70cf6887d03048369a31f79d345447ce79cf336d265367b320d9b9cebaeda3a949c52c3ef7ad46f
cc1b1a5e7b92eaebedb8fdf58ad105b334cc43d72109d92041197033d8d063d95600be29e127b66a
939b11f86722c8aa805b73e656ec06da3478439cef584c526b5adaf9fca6659cd6c2dda8756b18db
ac3c755b724bacfeab50036e0759b62507751a765c532d4bd26f1b654a491c2dae129f2c478bb591
e4eb0ec0d3a8789c32f5367834f7916aa5656dfb5b4e380e375a93b52a3d76c087745d931700bb15
575a4c52e3ee7d47df50d66e65175b8e287c5e17a91eecc6dd5643694a7d9d86a73c9e5180b8b3b6
708a98bcddb26c7e66a27227e3187afcc0b149c3519bb04ea375d15d98dac9acc978f75b0dd23c9a
cb58ad5b8ed1b105d9701f0f65edc37ec858b55886655cda6cdb87a389af33f43e58915dbd601c60
dc664dab71b235117017078f1e29775da5d1f87fd678ae55bb2ba5ce2a67683906b7e662535fce75
10ba0fb385c581feb0599bb0ae607b4b1edcdc18b70fa312a2e1c3d091f6af07eff56281f5f05c0b
5cda0a5327347d7ef461635b87b3615139146bb93d1ccaa38f5914eac5fdf6dcc0355c3172c5d2de
23eb585b291ee3a62b93476937c4e65e3ed8509dde3cad86191af8903a9389c5e08278b2da572f81
d256ea596ec08ded6905f0a83caf36f6323631a63c4c8b7eebeb5e83c7321a500b9911974ec3b06b
77dd87b26ebf8a36db12b8fdca021783a741e735106863f52dd520fb3cd010ec9f9b0e55815ab7ee
25fba954ae8be13c68cf09b41029e3d4f8e4e61ec9266b7022cea3d3f024da197dfc196e615d4b36
75ed641a13a5d5458750c06f527f0e8849cfff2801c2ccca29db905bfb1a7bc8c09174bdc1d1e0b7
4ba9098280437b36020ef4feb35650137a5da8153ab38acfc67f1643d4467979ebe06a381e68279a
8c6639162345834ad6eae7632eedf44cc65301b6d688ee9aa19c4aeb263d3b9548d1c66eadc3f3ef
c7ab9181ba0dcac8d436823e576cfec7a8616c22a53856cfc6bc95517debdbd5eeff036165e8af64
79e6730000000049454e44ae426082
)

; Laszlo's MCode() ; http://www.autohotkey.com/forum/viewtopic.php?p=135302#135302
nSize := StrLen(Hex)//2
VarSetCapacity( Buffer,nSize )
Loop % nSize
NumPut( "0x" . SubStr(hex,2*A_Index-1,2), Buffer, A_Index-1, "Char" )
Return

GuiEscape:
ExitApp