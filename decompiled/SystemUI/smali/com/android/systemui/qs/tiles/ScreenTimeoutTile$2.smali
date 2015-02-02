.class Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$2;
.super Ljava/lang/Object;
.source "ScreenTimeoutTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->handleUpdateState(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$TimeoutState;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;

.field final synthetic val$d:Landroid/graphics/drawable/AnimatedVectorDrawable;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;Landroid/graphics/drawable/AnimatedVectorDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$2;->val$d:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$2;->val$d:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method
