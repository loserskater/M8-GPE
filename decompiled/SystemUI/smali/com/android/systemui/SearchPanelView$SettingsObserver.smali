.class Lcom/android/systemui/SearchPanelView$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SearchPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SearchPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SearchPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/SearchPanelView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/SearchPanelView$SettingsObserver;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView$SettingsObserver;->observe()V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/SearchPanelView$SettingsObserver;->this$0:Lcom/android/systemui/SearchPanelView;

    # getter for: Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/SearchPanelView;->access$000(Lcom/android/systemui/SearchPanelView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    sget-object v2, Landroid/provider/Settings$Secure;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$SettingsObserver;->this$0:Lcom/android/systemui/SearchPanelView;

    # invokes: Lcom/android/systemui/SearchPanelView;->updateDrawables()V
    invoke-static {v0}, Lcom/android/systemui/SearchPanelView;->access$400(Lcom/android/systemui/SearchPanelView;)V

    return-void
.end method
