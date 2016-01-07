.class Landroid/webkit/LegacyErrorStrings;
.super Ljava/lang/Object;
.source "LegacyErrorStrings.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Http"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getResource(I)I
    .locals 4
    .param p0, "errorCode"    # I

    .prologue
<<<<<<< HEAD
    const v0, #android:string@httpError#t
=======
    const v0, 0x10400e1
>>>>>>> 362867e... reset device

    .line 46
    packed-switch p0, :pswitch_data_0

    .line 96
    const-string v1, "Http"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using generic message for unknown error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
<<<<<<< HEAD
    const v0, #android:string@httpErrorOk#t
=======
    const v0, 0x10400e0
>>>>>>> 362867e... reset device

    goto :goto_0

    :pswitch_2
<<<<<<< HEAD
    const v0, #android:string@httpErrorLookup#t
=======
    const v0, 0x10400e2
>>>>>>> 362867e... reset device

    goto :goto_0

    :pswitch_3
<<<<<<< HEAD
    const v0, #android:string@httpErrorUnsupportedAuthScheme#t
=======
    const v0, 0x10400e3
>>>>>>> 362867e... reset device

    goto :goto_0

    :pswitch_4
<<<<<<< HEAD
    const v0, #android:string@httpErrorAuth#t
=======
    const v0, 0x10400e4
>>>>>>> 362867e... reset device

    goto :goto_0

    :pswitch_5
<<<<<<< HEAD
    const v0, #android:string@httpErrorProxyAuth#t
=======
    const v0, 0x10400e5
>>>>>>> 362867e... reset device

    goto :goto_0

    :pswitch_6
<<<<<<< HEAD
    const v0, #android:string@httpErrorConnect#t
=======
    const v0, 0x10400e6
>>>>>>> 362867e... reset device

    goto :goto_0

    :pswitch_7
<<<<<<< HEAD
    const v0, #android:string@httpErrorIO#t
=======
    const v0, 0x10400e7
>>>>>>> 362867e... reset device

    goto :goto_0

    :pswitch_8
<<<<<<< HEAD
    const v0, #android:string@httpErrorTimeout#t
=======
    const v0, 0x10400e8
>>>>>>> 362867e... reset device

    goto :goto_0

    :pswitch_9
<<<<<<< HEAD
    const v0, #android:string@httpErrorRedirectLoop#t
=======
    const v0, 0x10400e9
>>>>>>> 362867e... reset device

    goto :goto_0

    :pswitch_a
<<<<<<< HEAD
    const v0, #android:string@httpErrorUnsupportedScheme#t
=======
    const v0, 0x1040008
>>>>>>> 362867e... reset device

    goto :goto_0

    :pswitch_b
<<<<<<< HEAD
    const v0, #android:string@httpErrorFailedSslHandshake#t
=======
    const v0, 0x10400ea
>>>>>>> 362867e... reset device

    goto :goto_0

    :pswitch_c
<<<<<<< HEAD
    const v0, #android:string@httpErrorBadUrl#t
=======
    const v0, 0x1040007
>>>>>>> 362867e... reset device

    goto :goto_0

    :pswitch_d
<<<<<<< HEAD
    const v0, #android:string@httpErrorFile#t
=======
    const v0, 0x10400eb
>>>>>>> 362867e... reset device

    goto :goto_0

    :pswitch_e
<<<<<<< HEAD
    const v0, #android:string@httpErrorFileNotFound#t
=======
    const v0, 0x10400ec
>>>>>>> 362867e... reset device

    goto :goto_0

    :pswitch_f
<<<<<<< HEAD
    const v0, #android:string@httpErrorTooManyRequests#t
=======
    const v0, 0x10400ed
>>>>>>> 362867e... reset device

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0xf
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static getString(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "errorCode"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-static {p0}, Landroid/webkit/LegacyErrorStrings;->getResource(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
