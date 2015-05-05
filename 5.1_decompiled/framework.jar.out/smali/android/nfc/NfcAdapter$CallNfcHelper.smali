.class final enum Landroid/nfc/NfcAdapter$CallNfcHelper;
.super Ljava/lang/Enum;
.source "NfcAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/NfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CallNfcHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/nfc/NfcAdapter$CallNfcHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/nfc/NfcAdapter$CallNfcHelper;

.field public static final enum NDEF_DISABLE:Landroid/nfc/NfcAdapter$CallNfcHelper;

.field public static final enum NDEF_ENABLE:Landroid/nfc/NfcAdapter$CallNfcHelper;

.field public static final enum NDEF_QUERY:Landroid/nfc/NfcAdapter$CallNfcHelper;

.field public static final enum NFC_OFF:Landroid/nfc/NfcAdapter$CallNfcHelper;

.field public static final enum NFC_ON:Landroid/nfc/NfcAdapter$CallNfcHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/nfc/NfcAdapter$CallNfcHelper;

    const-string v1, "NFC_ON"

    invoke-direct {v0, v1, v2}, Landroid/nfc/NfcAdapter$CallNfcHelper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/nfc/NfcAdapter$CallNfcHelper;->NFC_ON:Landroid/nfc/NfcAdapter$CallNfcHelper;

    new-instance v0, Landroid/nfc/NfcAdapter$CallNfcHelper;

    const-string v1, "NFC_OFF"

    invoke-direct {v0, v1, v3}, Landroid/nfc/NfcAdapter$CallNfcHelper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/nfc/NfcAdapter$CallNfcHelper;->NFC_OFF:Landroid/nfc/NfcAdapter$CallNfcHelper;

    new-instance v0, Landroid/nfc/NfcAdapter$CallNfcHelper;

    const-string v1, "NDEF_ENABLE"

    invoke-direct {v0, v1, v4}, Landroid/nfc/NfcAdapter$CallNfcHelper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/nfc/NfcAdapter$CallNfcHelper;->NDEF_ENABLE:Landroid/nfc/NfcAdapter$CallNfcHelper;

    new-instance v0, Landroid/nfc/NfcAdapter$CallNfcHelper;

    const-string v1, "NDEF_DISABLE"

    invoke-direct {v0, v1, v5}, Landroid/nfc/NfcAdapter$CallNfcHelper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/nfc/NfcAdapter$CallNfcHelper;->NDEF_DISABLE:Landroid/nfc/NfcAdapter$CallNfcHelper;

    new-instance v0, Landroid/nfc/NfcAdapter$CallNfcHelper;

    const-string v1, "NDEF_QUERY"

    invoke-direct {v0, v1, v6}, Landroid/nfc/NfcAdapter$CallNfcHelper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/nfc/NfcAdapter$CallNfcHelper;->NDEF_QUERY:Landroid/nfc/NfcAdapter$CallNfcHelper;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/nfc/NfcAdapter$CallNfcHelper;

    sget-object v1, Landroid/nfc/NfcAdapter$CallNfcHelper;->NFC_ON:Landroid/nfc/NfcAdapter$CallNfcHelper;

    aput-object v1, v0, v2

    sget-object v1, Landroid/nfc/NfcAdapter$CallNfcHelper;->NFC_OFF:Landroid/nfc/NfcAdapter$CallNfcHelper;

    aput-object v1, v0, v3

    sget-object v1, Landroid/nfc/NfcAdapter$CallNfcHelper;->NDEF_ENABLE:Landroid/nfc/NfcAdapter$CallNfcHelper;

    aput-object v1, v0, v4

    sget-object v1, Landroid/nfc/NfcAdapter$CallNfcHelper;->NDEF_DISABLE:Landroid/nfc/NfcAdapter$CallNfcHelper;

    aput-object v1, v0, v5

    sget-object v1, Landroid/nfc/NfcAdapter$CallNfcHelper;->NDEF_QUERY:Landroid/nfc/NfcAdapter$CallNfcHelper;

    aput-object v1, v0, v6

    sput-object v0, Landroid/nfc/NfcAdapter$CallNfcHelper;->$VALUES:[Landroid/nfc/NfcAdapter$CallNfcHelper;

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

.method public static valueOf(Ljava/lang/String;)Landroid/nfc/NfcAdapter$CallNfcHelper;
    .locals 1

    const-class v0, Landroid/nfc/NfcAdapter$CallNfcHelper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcAdapter$CallNfcHelper;

    return-object v0
.end method

.method public static values()[Landroid/nfc/NfcAdapter$CallNfcHelper;
    .locals 1

    sget-object v0, Landroid/nfc/NfcAdapter$CallNfcHelper;->$VALUES:[Landroid/nfc/NfcAdapter$CallNfcHelper;

    invoke-virtual {v0}, [Landroid/nfc/NfcAdapter$CallNfcHelper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/nfc/NfcAdapter$CallNfcHelper;

    return-object v0
.end method
