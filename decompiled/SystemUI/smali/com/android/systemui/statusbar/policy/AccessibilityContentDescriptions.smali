.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_CONNECTION_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field static final WIMAX_CONNECTION_STRENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 13
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 21
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 36
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    return-void

    .line 13
    :array_0
    .array-data 4
        0x7f0b0055
        0x7f0b0056
        0x7f0b0057
        0x7f0b0058
        0x7f0b0059
    .end array-data

    .line 21
    :array_1
    .array-data 4
        0x7f0b005a
        0x7f0b005b
        0x7f0b005c
        0x7f0b005d
        0x7f0b005e
    .end array-data

    .line 29
    :array_2
    .array-data 4
        0x7f0b0060
        0x7f0b0061
        0x7f0b0062
        0x7f0b0063
        0x7f0b0064
    .end array-data

    .line 36
    :array_3
    .array-data 4
        0x7f0b0067
        0x7f0b0068
        0x7f0b0069
        0x7f0b006a
        0x7f0b006b
    .end array-data
.end method
