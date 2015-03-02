.class Lcom/android/systemui/qs/tiles/RebootTile$1;
.super Ljava/lang/Object;
.source "RebootTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/RebootTile;->handleLongClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/RebootTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/RebootTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RebootTile$1;->this$0:Lcom/android/systemui/qs/tiles/RebootTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RebootTile$1;->this$0:Lcom/android/systemui/qs/tiles/RebootTile;

    # getter for: Lcom/android/systemui/qs/tiles/RebootTile;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/RebootTile;->access$000(Lcom/android/systemui/qs/tiles/RebootTile;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RebootTile$1;->this$0:Lcom/android/systemui/qs/tiles/RebootTile;

    # getter for: Lcom/android/systemui/qs/tiles/RebootTile;->mRebootToRecovery:Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/RebootTile;->access$100(Lcom/android/systemui/qs/tiles/RebootTile;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "recovery"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method
