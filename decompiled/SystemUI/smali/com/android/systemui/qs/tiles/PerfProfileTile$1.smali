.class Lcom/android/systemui/qs/tiles/PerfProfileTile$1;
.super Ljava/lang/Object;
.source "PerfProfileTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/PerfProfileTile;->handleUpdateState(Lcom/android/systemui/qs/tiles/PerfProfileTile$ProfileState;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/PerfProfileTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/PerfProfileTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile$1;->this$0:Lcom/android/systemui/qs/tiles/PerfProfileTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile$1;->this$0:Lcom/android/systemui/qs/tiles/PerfProfileTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/PerfProfileTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/tiles/PerfProfileTile$ProfileState;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/PerfProfileTile$ProfileState;->icon:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method
