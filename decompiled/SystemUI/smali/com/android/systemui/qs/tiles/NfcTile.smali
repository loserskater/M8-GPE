.class public Lcom/android/systemui/qs/tiles/NfcTile;
.super Lcom/android/systemui/qs/QSTile;
.source "NfcTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private mListening:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v0, Lcom/android/systemui/qs/tiles/NfcTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/NfcTile$1;-><init>(Lcom/android/systemui/qs/tiles/NfcTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/NfcTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState()V

    return-void
.end method

.method private getNfcState()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    return v0
.end method

.method private isEnabled()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->getNfcState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected handleClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->toggleState()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->qsCollapsePanel()V

    return-void
.end method

.method protected handleLongClick()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.NFC_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.NFC_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    iget-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_3

    const v0, 0x7f02015f

    :goto_2
    iput v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->iconId:I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0b01fb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    const v0, 0x7f02015e

    goto :goto_2
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/NfcTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mListening:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mListening:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method protected toggleState()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->getNfcState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
