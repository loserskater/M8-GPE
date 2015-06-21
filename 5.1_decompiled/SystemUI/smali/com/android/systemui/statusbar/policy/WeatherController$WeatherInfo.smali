.class public Lcom/android/systemui/statusbar/policy/WeatherController$WeatherInfo;
.super Ljava/lang/Object;
.source "WeatherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/WeatherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeatherInfo"
.end annotation


# instance fields
.field public city:Ljava/lang/String;

.field public condition:Ljava/lang/String;

.field public temp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/WeatherController$WeatherInfo;->temp:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/WeatherController$WeatherInfo;->city:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/WeatherController$WeatherInfo;->condition:Ljava/lang/String;

    return-void
.end method
