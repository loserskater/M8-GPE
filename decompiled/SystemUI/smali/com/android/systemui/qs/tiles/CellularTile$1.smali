.class Lcom/android/systemui/qs/tiles/CellularTile$1;
.super Ljava/lang/Object;
.source "CellularTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CellularTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAirplaneModeEnabled:Z

.field private mWifiConnected:Z

.field private mWifiEnabled:Z

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CellularTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirplaneModeChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mAirplaneModeEnabled:Z

    .line 185
    return-void
.end method

.method public onMobileDataEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->access$300(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->setMobileDataEnabled(Z)V

    .line 189
    return-void
.end method

.method public onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "mobileSignalIconId"    # I
    .param p3, "mobileSignalContentDescriptionId"    # Ljava/lang/String;
    .param p4, "dataTypeIconId"    # I
    .param p5, "activityIn"    # Z
    .param p6, "activityOut"    # Z
    .param p7, "dataTypeContentDescriptionId"    # Ljava/lang/String;
    .param p8, "description"    # Ljava/lang/String;
    .param p9, "noSim"    # Z
    .param p10, "isDataTypeIconWide"    # Z

    .prologue
    .line 165
    new-instance v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;-><init>(Lcom/android/systemui/qs/tiles/CellularTile$1;)V

    .line 166
    .local v0, "info":Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;
    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    .line 167
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mWifiEnabled:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->wifiEnabled:Z

    .line 168
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mWifiConnected:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->wifiConnected:Z

    .line 169
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mAirplaneModeEnabled:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->airplaneModeEnabled:Z

    .line 170
    iput p2, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSignalIconId:I

    .line 171
    iput-object p3, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->signalContentDescription:Ljava/lang/String;

    .line 172
    iput p4, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    .line 173
    iput-object p7, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataContentDescription:Ljava/lang/String;

    .line 174
    iput-boolean p5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityIn:Z

    .line 175
    iput-boolean p6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityOut:Z

    .line 176
    iput-object p8, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    .line 177
    iput-boolean p9, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    .line 178
    iput-boolean p10, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->isDataTypeIconWide:Z

    .line 179
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # invokes: Lcom/android/systemui/qs/tiles/CellularTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/CellularTile;->access$200(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method public onWifiSignalChanged(ZZIZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "connected"    # Z
    .param p3, "wifiSignalIconId"    # I
    .param p4, "activityIn"    # Z
    .param p5, "activityOut"    # Z
    .param p6, "wifiSignalContentDescriptionId"    # Ljava/lang/String;
    .param p7, "description"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mWifiEnabled:Z

    .line 155
    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mWifiConnected:Z

    .line 156
    return-void
.end method
