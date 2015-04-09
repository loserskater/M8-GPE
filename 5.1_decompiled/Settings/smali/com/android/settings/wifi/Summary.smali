.class Lcom/android/settings/wifi/Summary;
.super Ljava/lang/Object;
.source "Summary.java"


# direct methods
.method static get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static get(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;
    .locals 5

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    if-nez p1, :cond_0

    const v2, 0x7f090213

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-nez p1, :cond_2

    const v2, 0x7f0b000f

    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const v2, 0x7f0b0010

    goto :goto_1

    :cond_3
    aget-object v2, v0, v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
