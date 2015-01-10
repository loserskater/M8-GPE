.class public Lcom/android/settings/framework/activity/aboutphone/legal/HtcCopyrightAlertActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "HtcCopyrightAlertActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private getHtcCopyright()Ljava/lang/String;
    .locals 9

    const/high16 v4, 0x7f060000

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/legal/HtcCopyrightAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f060000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x1000

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v6, 0x800

    new-array v2, v6, [C

    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    const-string v6, "HTC Legal Information"

    :goto_1
    return-object v6

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/legal/HtcCopyrightAlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f08044c

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/legal/HtcCopyrightAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/legal/HtcCopyrightAlertActivity;->getHtcCopyright()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/legal/HtcCopyrightAlertActivity;->setupAlert()V

    return-void
.end method
