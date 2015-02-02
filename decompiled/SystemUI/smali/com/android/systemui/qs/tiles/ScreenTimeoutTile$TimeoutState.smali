.class public final Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$TimeoutState;
.super Lcom/android/systemui/qs/QSTile$State;
.source "ScreenTimeoutTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeoutState"
.end annotation


# instance fields
.field previousTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSTile$State;-><init>()V

    return-void
.end method
