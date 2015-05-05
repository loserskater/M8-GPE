.class final enum Lcom/android/settings/notification/HtcBoomSoundState;
.super Ljava/lang/Enum;
.source "HtcBoomSoundState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/notification/HtcBoomSoundState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/notification/HtcBoomSoundState;

.field public static final enum STATE_ERROR:Lcom/android/settings/notification/HtcBoomSoundState;

.field public static final enum STATE_INIT:Lcom/android/settings/notification/HtcBoomSoundState;

.field public static final enum STATE_OFF:Lcom/android/settings/notification/HtcBoomSoundState;

.field public static final enum STATE_ON:Lcom/android/settings/notification/HtcBoomSoundState;

.field public static final enum STATE_SYNC:Lcom/android/settings/notification/HtcBoomSoundState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/settings/notification/HtcBoomSoundState;

    const-string v1, "STATE_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/notification/HtcBoomSoundState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_ERROR:Lcom/android/settings/notification/HtcBoomSoundState;

    new-instance v0, Lcom/android/settings/notification/HtcBoomSoundState;

    const-string v1, "STATE_INIT"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/notification/HtcBoomSoundState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_INIT:Lcom/android/settings/notification/HtcBoomSoundState;

    new-instance v0, Lcom/android/settings/notification/HtcBoomSoundState;

    const-string v1, "STATE_SYNC"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/notification/HtcBoomSoundState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_SYNC:Lcom/android/settings/notification/HtcBoomSoundState;

    new-instance v0, Lcom/android/settings/notification/HtcBoomSoundState;

    const-string v1, "STATE_OFF"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/notification/HtcBoomSoundState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/notification/HtcBoomSoundState;

    new-instance v0, Lcom/android/settings/notification/HtcBoomSoundState;

    const-string v1, "STATE_ON"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/notification/HtcBoomSoundState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_ON:Lcom/android/settings/notification/HtcBoomSoundState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/notification/HtcBoomSoundState;

    sget-object v1, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_ERROR:Lcom/android/settings/notification/HtcBoomSoundState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_INIT:Lcom/android/settings/notification/HtcBoomSoundState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_SYNC:Lcom/android/settings/notification/HtcBoomSoundState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/notification/HtcBoomSoundState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_ON:Lcom/android/settings/notification/HtcBoomSoundState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/notification/HtcBoomSoundState;->$VALUES:[Lcom/android/settings/notification/HtcBoomSoundState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/notification/HtcBoomSoundState;
    .locals 1

    const-class v0, Lcom/android/settings/notification/HtcBoomSoundState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/HtcBoomSoundState;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/notification/HtcBoomSoundState;
    .locals 1

    sget-object v0, Lcom/android/settings/notification/HtcBoomSoundState;->$VALUES:[Lcom/android/settings/notification/HtcBoomSoundState;

    invoke-virtual {v0}, [Lcom/android/settings/notification/HtcBoomSoundState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/notification/HtcBoomSoundState;

    return-object v0
.end method
